import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_bloc.freezed.dart';

@freezed
class NavigationState with _$NavigationState {
  const NavigationState._();

  int get getIndex => when(showing: (index) => index);

  const factory NavigationState.showing(int index) = _ShowingNavigationState;
}

@freezed
class NavigationEvent with _$NavigationEvent {
  const NavigationEvent._();

  const factory NavigationEvent.setIndex(int newIndex) = _SetIndexNavigationEvent;
}

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc(
      int initialIndex,
      ) : super(NavigationState.showing(initialIndex)) {
    on<NavigationEvent>(
      (event, emit) => event.map<Future<void>>(
        setIndex: (event) => _initial(event, emit),
      ),
    );
  }

  Future<void> _initial(
    _SetIndexNavigationEvent event,
    Emitter<NavigationState> emitter,
  ) async {
    emitter(NavigationState.showing(event.newIndex));
  }
}
