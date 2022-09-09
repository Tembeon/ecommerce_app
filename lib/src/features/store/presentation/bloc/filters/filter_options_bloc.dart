import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_options_bloc.freezed.dart';

@freezed
class FilterOptionsState with _$FilterOptionsState {
  const FilterOptionsState._();

  /// Loads filters from server or local db
  const factory FilterOptionsState.loadFilters() =
      _LoadFiltersFilterOptionsState;

  /// Store filters
  //TODO: pass loaded filters
  const factory FilterOptionsState.loadedFilters() =
      _LoadedFiltersFilterOptionsState;

  /// Save filters to use
  //TODO: pass argument with list of filters
  const factory FilterOptionsState.saveFilters() =
      _SaveFiltersFilterOptionsState;

  const factory FilterOptionsState.openFiltersDialog() =
      _OpenFiltersDialogFilterOptionsState;
}

@freezed
class FilterOptionsEvent with _$FilterOptionsEvent {
  const FilterOptionsEvent._();

  /// Load filters on startup
  const factory FilterOptionsEvent.loadFilters() =
      _LoadFiltersFilterOptionsEvent;

  /// User has selected filters
  const factory FilterOptionsEvent.saveFilters() =
      _SaveFiltersFilterOptionsEvent;

  const factory FilterOptionsEvent.openFilters() =
      _OpenFiltersFilterOptionsEvent;
}

class FilterOptionsBloc extends Bloc<FilterOptionsEvent, FilterOptionsState> {
  FilterOptionsBloc() : super(const FilterOptionsState.loadFilters()) {
    on<FilterOptionsEvent>(
      transformer: sequential<FilterOptionsEvent>(),
      (event, emit) => event.map<Future<void>>(
        loadFilters: (event) => _loadFilters(event, emit),
        saveFilters: (event) => _saveFilters(event, emit),
        openFilters: (event) => _openFilters(event, emit),
      ),
    );
  }

  Future<void> _loadFilters(
    _LoadFiltersFilterOptionsEvent event,
    Emitter<FilterOptionsState> emitter,
  ) async {
    // ...
  }

  Future<void> _saveFilters(
    _SaveFiltersFilterOptionsEvent event,
    Emitter<FilterOptionsState> emitter,
  ) async {
    emitter(const FilterOptionsState.loadedFilters());
  }

  Future<void> _openFilters(
    _OpenFiltersFilterOptionsEvent event,
    Emitter<FilterOptionsState> emitter,
  ) async {
    emitter(const FilterOptionsState.openFiltersDialog());
  }
}
