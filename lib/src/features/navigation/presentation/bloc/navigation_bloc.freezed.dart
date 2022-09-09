// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationState {
  int get index => throw _privateConstructorUsedError;
  PageController get pageController => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, PageController pageController) showing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, PageController pageController)? showing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, PageController pageController)? showing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowingNavigationState value) showing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowingNavigationState value)? showing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowingNavigationState value)? showing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({int index, PageController pageController});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? pageController = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pageController: pageController == freezed
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc
abstract class _$$_ShowingNavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_ShowingNavigationStateCopyWith(_$_ShowingNavigationState value,
          $Res Function(_$_ShowingNavigationState) then) =
      __$$_ShowingNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({int index, PageController pageController});
}

/// @nodoc
class __$$_ShowingNavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$$_ShowingNavigationStateCopyWith<$Res> {
  __$$_ShowingNavigationStateCopyWithImpl(_$_ShowingNavigationState _value,
      $Res Function(_$_ShowingNavigationState) _then)
      : super(_value, (v) => _then(v as _$_ShowingNavigationState));

  @override
  _$_ShowingNavigationState get _value =>
      super._value as _$_ShowingNavigationState;

  @override
  $Res call({
    Object? index = freezed,
    Object? pageController = freezed,
  }) {
    return _then(_$_ShowingNavigationState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pageController: pageController == freezed
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc

class _$_ShowingNavigationState extends _ShowingNavigationState {
  const _$_ShowingNavigationState(
      {required this.index, required this.pageController})
      : super._();

  @override
  final int index;
  @override
  final PageController pageController;

  @override
  String toString() {
    return 'NavigationState.showing(index: $index, pageController: $pageController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowingNavigationState &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality()
                .equals(other.pageController, pageController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(pageController));

  @JsonKey(ignore: true)
  @override
  _$$_ShowingNavigationStateCopyWith<_$_ShowingNavigationState> get copyWith =>
      __$$_ShowingNavigationStateCopyWithImpl<_$_ShowingNavigationState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, PageController pageController) showing,
  }) {
    return showing(index, pageController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, PageController pageController)? showing,
  }) {
    return showing?.call(index, pageController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, PageController pageController)? showing,
    required TResult orElse(),
  }) {
    if (showing != null) {
      return showing(index, pageController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowingNavigationState value) showing,
  }) {
    return showing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowingNavigationState value)? showing,
  }) {
    return showing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowingNavigationState value)? showing,
    required TResult orElse(),
  }) {
    if (showing != null) {
      return showing(this);
    }
    return orElse();
  }
}

abstract class _ShowingNavigationState extends NavigationState {
  const factory _ShowingNavigationState(
          {required final int index,
          required final PageController pageController}) =
      _$_ShowingNavigationState;
  const _ShowingNavigationState._() : super._();

  @override
  int get index;
  @override
  PageController get pageController;
  @override
  @JsonKey(ignore: true)
  _$$_ShowingNavigationStateCopyWith<_$_ShowingNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigationEvent {
  int get newIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newIndex) setIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newIndex)? setIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newIndex)? setIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetIndexNavigationEvent value) setIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetIndexNavigationEvent value)? setIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetIndexNavigationEvent value)? setIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationEventCopyWith<NavigationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
  $Res call({int newIndex});
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;

  @override
  $Res call({
    Object? newIndex = freezed,
  }) {
    return _then(_value.copyWith(
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SetIndexNavigationEventCopyWith<$Res>
    implements $NavigationEventCopyWith<$Res> {
  factory _$$_SetIndexNavigationEventCopyWith(_$_SetIndexNavigationEvent value,
          $Res Function(_$_SetIndexNavigationEvent) then) =
      __$$_SetIndexNavigationEventCopyWithImpl<$Res>;
  @override
  $Res call({int newIndex});
}

/// @nodoc
class __$$_SetIndexNavigationEventCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$_SetIndexNavigationEventCopyWith<$Res> {
  __$$_SetIndexNavigationEventCopyWithImpl(_$_SetIndexNavigationEvent _value,
      $Res Function(_$_SetIndexNavigationEvent) _then)
      : super(_value, (v) => _then(v as _$_SetIndexNavigationEvent));

  @override
  _$_SetIndexNavigationEvent get _value =>
      super._value as _$_SetIndexNavigationEvent;

  @override
  $Res call({
    Object? newIndex = freezed,
  }) {
    return _then(_$_SetIndexNavigationEvent(
      newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetIndexNavigationEvent extends _SetIndexNavigationEvent {
  const _$_SetIndexNavigationEvent(this.newIndex) : super._();

  @override
  final int newIndex;

  @override
  String toString() {
    return 'NavigationEvent.setIndex(newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetIndexNavigationEvent &&
            const DeepCollectionEquality().equals(other.newIndex, newIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newIndex));

  @JsonKey(ignore: true)
  @override
  _$$_SetIndexNavigationEventCopyWith<_$_SetIndexNavigationEvent>
      get copyWith =>
          __$$_SetIndexNavigationEventCopyWithImpl<_$_SetIndexNavigationEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newIndex) setIndex,
  }) {
    return setIndex(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newIndex)? setIndex,
  }) {
    return setIndex?.call(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newIndex)? setIndex,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetIndexNavigationEvent value) setIndex,
  }) {
    return setIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetIndexNavigationEvent value)? setIndex,
  }) {
    return setIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetIndexNavigationEvent value)? setIndex,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(this);
    }
    return orElse();
  }
}

abstract class _SetIndexNavigationEvent extends NavigationEvent {
  const factory _SetIndexNavigationEvent(final int newIndex) =
      _$_SetIndexNavigationEvent;
  const _SetIndexNavigationEvent._() : super._();

  @override
  int get newIndex;
  @override
  @JsonKey(ignore: true)
  _$$_SetIndexNavigationEventCopyWith<_$_SetIndexNavigationEvent>
      get copyWith => throw _privateConstructorUsedError;
}
