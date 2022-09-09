import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/cart_content/cart_content.dart';
import '../../domain/usecases/get_cart.dart';

part 'cart_bloc.freezed.dart';

/// States for UI used in [CartBloc].
@freezed
class CartState with _$CartState {
  const CartState._();

  /// Something is loading.
  const factory CartState.loading() = _LoadingCartState;

  /// Something went wrong.
  const factory CartState.failure({
    @Default('An error has occurred') String message,
  }) = _FailureCartState;

  /// Show cart with given cart content.
  const factory CartState.showingCartWith(
    CartContent cart,
  ) = _ShowingCartWithCartState;
}

/// Events emitted to [CartBloc].
@freezed
class CartEvent with _$CartEvent {
  const CartEvent._();

  /// Starts getting data from server.
  const factory CartEvent.loadData() = _LoadDataCartEvent;
}

/// Bloc for [CartScreen].
class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartFromServer _data;

  CartBloc(
    GetCartFromServer data,
  )   : _data = data,
        super(const CartState.loading()) {
    on<CartEvent>(
      (event, emit) => event.map<Future<void>>(
        loadData: (event) => _loadData(event, emit),
      ),
    );
  }

  // load new data from server
  Future<void> _loadData(
    _LoadDataCartEvent event,
    Emitter<CartState> emitter,
  ) async {
    // show loading state
    emitter(const CartState.loading());
    try {
      CartContent result =
          await _data.getCart().timeout(const Duration(seconds: 70));
      // successful request, show data
      emitter(CartState.showingCartWith(result));
    } on TimeoutException {
      emitter(const CartState.failure(message: 'Request timeout'));
    } on Object {
      // something went wrong while loading
      emitter(const CartState.failure());
      rethrow;
    }
  }
}
