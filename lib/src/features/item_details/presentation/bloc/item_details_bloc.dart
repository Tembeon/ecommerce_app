import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/details_model.dart';
import '../../domain/usecases/get_item_details_from_server.dart';

part 'item_details_bloc.freezed.dart';

/// States for UI used in [ItemDetailsBloc].
@freezed
class ItemDetailsState with _$ItemDetailsState {
  const ItemDetailsState._();

  /// Storing details about few items.
  const factory ItemDetailsState.showDetailsWith(
    List<DetailsModel> details,
  ) = _InitialItemDetailsState;

  const factory ItemDetailsState.loading() = _LoadingItemDetailsState;

  /// Something went wrong while loading data.
  const factory ItemDetailsState.failure({
    @Default('An error has occurred') String message,
  }) = _FailureItemDetailsState;
}

/// Events emitted to [ItemDetailsBloc].
@freezed
class ItemDetailsEvent with _$ItemDetailsEvent {
  const ItemDetailsEvent._();

  /// Load new data from server.
  const factory ItemDetailsEvent.loadData() = _LoadDataItemDetailsEvent;
}

/// Bloc for [ItemDetailsScreen].
class ItemDetailsBloc extends Bloc<ItemDetailsEvent, ItemDetailsState> {
  /// Repository for getting data.
  final GetItemDetailsFromServer _data;

  ItemDetailsBloc(GetItemDetailsFromServer repository)
      : _data = repository,
        super(const ItemDetailsState.loading()) {
    on<ItemDetailsEvent>(
      (event, emit) => event.map<Future<void>>(
        loadData: (event) => _loadData(event, emit),
      ),
    );
  }

  Future<void> _loadData(
    _LoadDataItemDetailsEvent event,
    Emitter<ItemDetailsState> emitter,
  ) async {
    emitter(const ItemDetailsState.loading());
    try {
      DetailsModel result =
          await _data.getDetails().timeout(const Duration(seconds: 70));
      List<DetailsModel> details =
          List<DetailsModel>.generate(3, (index) => result);

      emitter(ItemDetailsState.showDetailsWith(details));
    } on TimeoutException {
      emitter(const ItemDetailsState.failure(message: 'Request timeout'));
    } on Object {
      emitter(const ItemDetailsState.failure());
      rethrow;
    }
  }
}
