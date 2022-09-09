import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_bloc.freezed.dart';

@freezed
class NavigationState with _$NavigationState {
  const NavigationState._();

  int get getIndex => when(showing: (index, _) => index);

  PageController get getController =>
      when(showing: (_, controller) => controller);

  const factory NavigationState.showing({
    required int index,
    required PageController pageController,
  }) = _ShowingNavigationState;
}

@freezed
class NavigationEvent with _$NavigationEvent {
  const NavigationEvent._();

  const factory NavigationEvent.setIndex(int newIndex) =
      _SetIndexNavigationEvent;
}

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  final PageController _pageController;

  NavigationBloc(
    int initialIndex,
    PageController controller,
  )   : _pageController = controller,
        super(NavigationState.showing(
          index: initialIndex,
          pageController: controller,
        )) {
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
    _pageController.jumpToPage(event.newIndex);
    emitter(NavigationState.showing(
      index: event.newIndex,
      pageController: _pageController,
    ));
  }
}
