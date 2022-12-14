import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/store_items/store_items.dart';
import '../../../domain/usecases/get_store_items.dart';

part 'store_bloc.freezed.dart';

@freezed
class StoreState with _$StoreState {
  const StoreState._();

  const factory StoreState.failure({
    @Default('An error has occurred') String message,
  }) = _FailureStoreState;

  const factory StoreState.loading() = _LoadingStoreState;

  const factory StoreState.storeData(StoreItems items) = _StoreDataStoreState;
}

@freezed
class StoreEvent with _$StoreEvent {
  const StoreEvent._();

  const factory StoreEvent.loadNewData() = _LoadNewDataStoreEvent;
}

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  final GetStoreItems _data;

  StoreBloc(GetStoreItems data)
      : _data = data,
        super(const StoreState.loading()) {
    on<StoreEvent>(
      (event, emit) => event.map<Future<void>>(
        loadNewData: (event) => _loadNewData(event, emit),
      ),
    );
  }

  Future<void> _loadNewData(
    _LoadNewDataStoreEvent event,
    Emitter<StoreState> emitter,
  ) async {
    emitter(const StoreState.loading());
    try {
      var newData = await _data.getStoreItems();
      // store new data
      emitter(StoreState.storeData(newData));
    } on TimeoutException {
      emitter(const StoreState.failure(message: 'Request timeout'));
    } on Object {
      // something went wrong
      emitter(
        const StoreState.failure(message: 'Error while fetching new data'),
      );
      rethrow;
    }
  }
}
