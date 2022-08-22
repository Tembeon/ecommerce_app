import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_bloc.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const CategoriesState._();

  /// Return current active item
  int get getSelectedItem => when(selected: (selected) => selected);

  /// Stores current active item
  const factory CategoriesState.selected(int index) = _SelectedCategoriesState;
}

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const CategoriesEvent._();

  /// User selected new item
  const factory CategoriesEvent.selectItem(int newIndex) =
      _SelectItemCategoriesEvent;
}

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  // pass initial index to restore selected item
  CategoriesBloc(int initialIndex)
      : super(CategoriesState.selected(initialIndex)) {
    on<CategoriesEvent>(
      (event, emit) => event.map<Future<void>>(
        selectItem: (event) => _selectItem(event, emit),
      ),
    );
  }

  /// Selecting new item
  Future<void> _selectItem(
    _SelectItemCategoriesEvent event,
    Emitter<CategoriesState> emitter,
  ) async {
    emitter(CategoriesState.selected(event.newIndex));
  }
}
