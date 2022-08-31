// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(CartContent cart) showingCartWith,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartContent cart)? showingCartWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartContent cart)? showingCartWith,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingCartState value) loading,
    required TResult Function(_FailureCartState value) failure,
    required TResult Function(_ShowingCartWithCartState value) showingCartWith,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingCartState value)? loading,
    TResult Function(_FailureCartState value)? failure,
    TResult Function(_ShowingCartWithCartState value)? showingCartWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingCartState value)? loading,
    TResult Function(_FailureCartState value)? failure,
    TResult Function(_ShowingCartWithCartState value)? showingCartWith,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;

  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$$_LoadingCartStateCopyWith<$Res> {
  factory _$$_LoadingCartStateCopyWith(
          _$_LoadingCartState value, $Res Function(_$_LoadingCartState) then) =
      __$$_LoadingCartStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$_LoadingCartStateCopyWith<$Res> {
  __$$_LoadingCartStateCopyWithImpl(
      _$_LoadingCartState _value, $Res Function(_$_LoadingCartState) _then)
      : super(_value, (v) => _then(v as _$_LoadingCartState));

  @override
  _$_LoadingCartState get _value => super._value as _$_LoadingCartState;
}

/// @nodoc

class _$_LoadingCartState extends _LoadingCartState {
  const _$_LoadingCartState() : super._();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingCartState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(CartContent cart) showingCartWith,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartContent cart)? showingCartWith,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartContent cart)? showingCartWith,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingCartState value) loading,
    required TResult Function(_FailureCartState value) failure,
    required TResult Function(_ShowingCartWithCartState value) showingCartWith,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingCartState value)? loading,
    TResult Function(_FailureCartState value)? failure,
    TResult Function(_ShowingCartWithCartState value)? showingCartWith,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingCartState value)? loading,
    TResult Function(_FailureCartState value)? failure,
    TResult Function(_ShowingCartWithCartState value)? showingCartWith,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingCartState extends CartState {
  const factory _LoadingCartState() = _$_LoadingCartState;

  const _LoadingCartState._() : super._();
}

/// @nodoc
abstract class _$$_FailureCartStateCopyWith<$Res> {
  factory _$$_FailureCartStateCopyWith(
          _$_FailureCartState value, $Res Function(_$_FailureCartState) then) =
      __$$_FailureCartStateCopyWithImpl<$Res>;

  $Res call({String message});
}

/// @nodoc
class __$$_FailureCartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$_FailureCartStateCopyWith<$Res> {
  __$$_FailureCartStateCopyWithImpl(
      _$_FailureCartState _value, $Res Function(_$_FailureCartState) _then)
      : super(_value, (v) => _then(v as _$_FailureCartState));

  @override
  _$_FailureCartState get _value => super._value as _$_FailureCartState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_FailureCartState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureCartState extends _FailureCartState {
  const _$_FailureCartState({this.message = 'An error has occurred'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'CartState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureCartState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCartStateCopyWith<_$_FailureCartState> get copyWith =>
      __$$_FailureCartStateCopyWithImpl<_$_FailureCartState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(CartContent cart) showingCartWith,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartContent cart)? showingCartWith,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartContent cart)? showingCartWith,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingCartState value) loading,
    required TResult Function(_FailureCartState value) failure,
    required TResult Function(_ShowingCartWithCartState value) showingCartWith,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingCartState value)? loading,
    TResult Function(_FailureCartState value)? failure,
    TResult Function(_ShowingCartWithCartState value)? showingCartWith,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingCartState value)? loading,
    TResult Function(_FailureCartState value)? failure,
    TResult Function(_ShowingCartWithCartState value)? showingCartWith,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureCartState extends CartState {
  const factory _FailureCartState({final String message}) = _$_FailureCartState;

  const _FailureCartState._() : super._();

  String get message;

  @JsonKey(ignore: true)
  _$$_FailureCartStateCopyWith<_$_FailureCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowingCartWithCartStateCopyWith<$Res> {
  factory _$$_ShowingCartWithCartStateCopyWith(
          _$_ShowingCartWithCartState value,
          $Res Function(_$_ShowingCartWithCartState) then) =
      __$$_ShowingCartWithCartStateCopyWithImpl<$Res>;

  $Res call({CartContent cart});

  $CartContentCopyWith<$Res> get cart;
}

/// @nodoc
class __$$_ShowingCartWithCartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$_ShowingCartWithCartStateCopyWith<$Res> {
  __$$_ShowingCartWithCartStateCopyWithImpl(_$_ShowingCartWithCartState _value,
      $Res Function(_$_ShowingCartWithCartState) _then)
      : super(_value, (v) => _then(v as _$_ShowingCartWithCartState));

  @override
  _$_ShowingCartWithCartState get _value =>
      super._value as _$_ShowingCartWithCartState;

  @override
  $Res call({
    Object? cart = freezed,
  }) {
    return _then(_$_ShowingCartWithCartState(
      cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartContent,
    ));
  }

  @override
  $CartContentCopyWith<$Res> get cart {
    return $CartContentCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$_ShowingCartWithCartState extends _ShowingCartWithCartState {
  const _$_ShowingCartWithCartState(this.cart) : super._();

  @override
  final CartContent cart;

  @override
  String toString() {
    return 'CartState.showingCartWith(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowingCartWithCartState &&
            const DeepCollectionEquality().equals(other.cart, cart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cart));

  @JsonKey(ignore: true)
  @override
  _$$_ShowingCartWithCartStateCopyWith<_$_ShowingCartWithCartState>
      get copyWith => __$$_ShowingCartWithCartStateCopyWithImpl<
          _$_ShowingCartWithCartState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(CartContent cart) showingCartWith,
  }) {
    return showingCartWith(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartContent cart)? showingCartWith,
  }) {
    return showingCartWith?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartContent cart)? showingCartWith,
    required TResult orElse(),
  }) {
    if (showingCartWith != null) {
      return showingCartWith(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingCartState value) loading,
    required TResult Function(_FailureCartState value) failure,
    required TResult Function(_ShowingCartWithCartState value) showingCartWith,
  }) {
    return showingCartWith(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingCartState value)? loading,
    TResult Function(_FailureCartState value)? failure,
    TResult Function(_ShowingCartWithCartState value)? showingCartWith,
  }) {
    return showingCartWith?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingCartState value)? loading,
    TResult Function(_FailureCartState value)? failure,
    TResult Function(_ShowingCartWithCartState value)? showingCartWith,
    required TResult orElse(),
  }) {
    if (showingCartWith != null) {
      return showingCartWith(this);
    }
    return orElse();
  }
}

abstract class _ShowingCartWithCartState extends CartState {
  const factory _ShowingCartWithCartState(final CartContent cart) =
      _$_ShowingCartWithCartState;

  const _ShowingCartWithCartState._() : super._();

  CartContent get cart;

  @JsonKey(ignore: true)
  _$$_ShowingCartWithCartStateCopyWith<_$_ShowingCartWithCartState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataCartEvent value) loadData,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDataCartEvent value)? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataCartEvent value)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;

  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$$_LoadDataCartEventCopyWith<$Res> {
  factory _$$_LoadDataCartEventCopyWith(_$_LoadDataCartEvent value,
          $Res Function(_$_LoadDataCartEvent) then) =
      __$$_LoadDataCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadDataCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_LoadDataCartEventCopyWith<$Res> {
  __$$_LoadDataCartEventCopyWithImpl(
      _$_LoadDataCartEvent _value, $Res Function(_$_LoadDataCartEvent) _then)
      : super(_value, (v) => _then(v as _$_LoadDataCartEvent));

  @override
  _$_LoadDataCartEvent get _value => super._value as _$_LoadDataCartEvent;
}

/// @nodoc

class _$_LoadDataCartEvent extends _LoadDataCartEvent {
  const _$_LoadDataCartEvent() : super._();

  @override
  String toString() {
    return 'CartEvent.loadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadDataCartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataCartEvent value) loadData,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDataCartEvent value)? loadData,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataCartEvent value)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadDataCartEvent extends CartEvent {
  const factory _LoadDataCartEvent() = _$_LoadDataCartEvent;

  const _LoadDataCartEvent._() : super._();
}
