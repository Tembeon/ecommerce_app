import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/cart_repository.dart';
import '../model/cart_content.dart';

part 'cart_bloc.freezed.dart';

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

@freezed
class CartEvent with _$CartEvent {
  const CartEvent._();

  /// Starts getting data from server.
  const factory CartEvent.loadData() = _LoadDataCartEvent;
}

class CartBloc extends Bloc<CartEvent, CartState> {
  // repository for getting data.
  final ICartRepository _repository;

  CartBloc(ICartRepository repository)
      : _repository = repository,
        super(const CartState.loading()) {
    on<CartEvent>(
      (event, emit) => event.map<Future<void>>(
        loadData: (event) => _loadData(event, emit),
      ),
    );
  }

  Future<void> _loadData(
    _LoadDataCartEvent event,
    Emitter<CartState> emitter,
  ) async {
    emitter(const CartState.loading());
    try {
      CartContent result =
          await _repository.getCart().timeout(const Duration(seconds: 70));

      emitter(CartState.showingCartWith(result));
    } on TimeoutException {
      emitter(const CartState.failure(message: 'Request timeout'));
    } on Object {
      emitter(const CartState.failure());
      rethrow;
    }
  }
}
