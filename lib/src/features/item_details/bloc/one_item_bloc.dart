import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/details.dart';

part 'one_item_bloc.freezed.dart';

@freezed
class OneItemState with _$OneItemState {
  const OneItemState._();

  const factory OneItemState.showingItem(
    DetailsModel item,
  ) = _AddToCartOneItemState;

  const factory OneItemState.selectedColor(
    String colorHex,
  ) = _SelectColorOneItemState;

  const factory OneItemState.selectedCapacity(
    String capacity,
  ) = _SelectCapacityOneItemState;
}

@freezed
class OneItemEvent with _$OneItemEvent {
  const OneItemEvent._();

  const factory OneItemEvent.selectColor(String colorHex) =
      _SelectColorOneItemEvent;

  const factory OneItemEvent.selectCapacity(String capacity) =
      _SelectCapacityOneItemEvent;
}

class OneItemBloc extends Bloc<OneItemEvent, OneItemState> {
  OneItemBloc(
    DetailsModel item,
  ) : super(OneItemState.showingItem(item)) {
    on<OneItemEvent>(
      (event, emit) => event.map<Future<void>>(
        selectColor: (event) => _selectColor(event, emit),
        selectCapacity: (event) => _selectCapacity(event, emit),
      ),
    );
  }

  Future<void> _selectColor(
    _SelectColorOneItemEvent event,
    Emitter<OneItemState> emitter,
  ) async {
    emitter(OneItemState.selectedColor(event.colorHex));
  }

  Future<void> _selectCapacity(
    _SelectCapacityOneItemEvent event,
    Emitter<OneItemState> emitter,
  ) async {
    emitter(OneItemState.selectedCapacity(event.capacity));
  }
}
