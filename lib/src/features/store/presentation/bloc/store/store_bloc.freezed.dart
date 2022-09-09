// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function(StoreItems items) storeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(StoreItems items)? storeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(StoreItems items)? storeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureStoreState value) failure,
    required TResult Function(_LoadingStoreState value) loading,
    required TResult Function(_StoreDataStoreState value) storeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FailureStoreState value)? failure,
    TResult Function(_LoadingStoreState value)? loading,
    TResult Function(_StoreDataStoreState value)? storeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureStoreState value)? failure,
    TResult Function(_LoadingStoreState value)? loading,
    TResult Function(_StoreDataStoreState value)? storeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreStateCopyWith<$Res> {
  factory $StoreStateCopyWith(
          StoreState value, $Res Function(StoreState) then) =
      _$StoreStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreStateCopyWithImpl<$Res> implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._value, this._then);

  final StoreState _value;
  // ignore: unused_field
  final $Res Function(StoreState) _then;
}

/// @nodoc
abstract class _$$_FailureStoreStateCopyWith<$Res> {
  factory _$$_FailureStoreStateCopyWith(_$_FailureStoreState value,
          $Res Function(_$_FailureStoreState) then) =
      __$$_FailureStoreStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_FailureStoreStateCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res>
    implements _$$_FailureStoreStateCopyWith<$Res> {
  __$$_FailureStoreStateCopyWithImpl(
      _$_FailureStoreState _value, $Res Function(_$_FailureStoreState) _then)
      : super(_value, (v) => _then(v as _$_FailureStoreState));

  @override
  _$_FailureStoreState get _value => super._value as _$_FailureStoreState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_FailureStoreState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureStoreState extends _FailureStoreState {
  const _$_FailureStoreState({this.message = 'An error has occurred'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'StoreState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureStoreState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_FailureStoreStateCopyWith<_$_FailureStoreState> get copyWith =>
      __$$_FailureStoreStateCopyWithImpl<_$_FailureStoreState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function(StoreItems items) storeData,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(StoreItems items)? storeData,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(StoreItems items)? storeData,
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
    required TResult Function(_FailureStoreState value) failure,
    required TResult Function(_LoadingStoreState value) loading,
    required TResult Function(_StoreDataStoreState value) storeData,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FailureStoreState value)? failure,
    TResult Function(_LoadingStoreState value)? loading,
    TResult Function(_StoreDataStoreState value)? storeData,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureStoreState value)? failure,
    TResult Function(_LoadingStoreState value)? loading,
    TResult Function(_StoreDataStoreState value)? storeData,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureStoreState extends StoreState {
  const factory _FailureStoreState({final String message}) =
      _$_FailureStoreState;
  const _FailureStoreState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureStoreStateCopyWith<_$_FailureStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStoreStateCopyWith<$Res> {
  factory _$$_LoadingStoreStateCopyWith(_$_LoadingStoreState value,
          $Res Function(_$_LoadingStoreState) then) =
      __$$_LoadingStoreStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStoreStateCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res>
    implements _$$_LoadingStoreStateCopyWith<$Res> {
  __$$_LoadingStoreStateCopyWithImpl(
      _$_LoadingStoreState _value, $Res Function(_$_LoadingStoreState) _then)
      : super(_value, (v) => _then(v as _$_LoadingStoreState));

  @override
  _$_LoadingStoreState get _value => super._value as _$_LoadingStoreState;
}

/// @nodoc

class _$_LoadingStoreState extends _LoadingStoreState {
  const _$_LoadingStoreState() : super._();

  @override
  String toString() {
    return 'StoreState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingStoreState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function(StoreItems items) storeData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(StoreItems items)? storeData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(StoreItems items)? storeData,
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
    required TResult Function(_FailureStoreState value) failure,
    required TResult Function(_LoadingStoreState value) loading,
    required TResult Function(_StoreDataStoreState value) storeData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FailureStoreState value)? failure,
    TResult Function(_LoadingStoreState value)? loading,
    TResult Function(_StoreDataStoreState value)? storeData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureStoreState value)? failure,
    TResult Function(_LoadingStoreState value)? loading,
    TResult Function(_StoreDataStoreState value)? storeData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingStoreState extends StoreState {
  const factory _LoadingStoreState() = _$_LoadingStoreState;
  const _LoadingStoreState._() : super._();
}

/// @nodoc
abstract class _$$_StoreDataStoreStateCopyWith<$Res> {
  factory _$$_StoreDataStoreStateCopyWith(_$_StoreDataStoreState value,
          $Res Function(_$_StoreDataStoreState) then) =
      __$$_StoreDataStoreStateCopyWithImpl<$Res>;
  $Res call({StoreItems items});

  $StoreItemsCopyWith<$Res> get items;
}

/// @nodoc
class __$$_StoreDataStoreStateCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res>
    implements _$$_StoreDataStoreStateCopyWith<$Res> {
  __$$_StoreDataStoreStateCopyWithImpl(_$_StoreDataStoreState _value,
      $Res Function(_$_StoreDataStoreState) _then)
      : super(_value, (v) => _then(v as _$_StoreDataStoreState));

  @override
  _$_StoreDataStoreState get _value => super._value as _$_StoreDataStoreState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_StoreDataStoreState(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as StoreItems,
    ));
  }

  @override
  $StoreItemsCopyWith<$Res> get items {
    return $StoreItemsCopyWith<$Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value));
    });
  }
}

/// @nodoc

class _$_StoreDataStoreState extends _StoreDataStoreState {
  const _$_StoreDataStoreState(this.items) : super._();

  @override
  final StoreItems items;

  @override
  String toString() {
    return 'StoreState.storeData(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreDataStoreState &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$$_StoreDataStoreStateCopyWith<_$_StoreDataStoreState> get copyWith =>
      __$$_StoreDataStoreStateCopyWithImpl<_$_StoreDataStoreState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function(StoreItems items) storeData,
  }) {
    return storeData(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(StoreItems items)? storeData,
  }) {
    return storeData?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(StoreItems items)? storeData,
    required TResult orElse(),
  }) {
    if (storeData != null) {
      return storeData(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureStoreState value) failure,
    required TResult Function(_LoadingStoreState value) loading,
    required TResult Function(_StoreDataStoreState value) storeData,
  }) {
    return storeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FailureStoreState value)? failure,
    TResult Function(_LoadingStoreState value)? loading,
    TResult Function(_StoreDataStoreState value)? storeData,
  }) {
    return storeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureStoreState value)? failure,
    TResult Function(_LoadingStoreState value)? loading,
    TResult Function(_StoreDataStoreState value)? storeData,
    required TResult orElse(),
  }) {
    if (storeData != null) {
      return storeData(this);
    }
    return orElse();
  }
}

abstract class _StoreDataStoreState extends StoreState {
  const factory _StoreDataStoreState(final StoreItems items) =
      _$_StoreDataStoreState;
  const _StoreDataStoreState._() : super._();

  StoreItems get items;
  @JsonKey(ignore: true)
  _$$_StoreDataStoreStateCopyWith<_$_StoreDataStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNewDataStoreEvent value) loadNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadNewDataStoreEvent value)? loadNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNewDataStoreEvent value)? loadNewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreEventCopyWith<$Res> {
  factory $StoreEventCopyWith(
          StoreEvent value, $Res Function(StoreEvent) then) =
      _$StoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreEventCopyWithImpl<$Res> implements $StoreEventCopyWith<$Res> {
  _$StoreEventCopyWithImpl(this._value, this._then);

  final StoreEvent _value;
  // ignore: unused_field
  final $Res Function(StoreEvent) _then;
}

/// @nodoc
abstract class _$$_LoadNewDataStoreEventCopyWith<$Res> {
  factory _$$_LoadNewDataStoreEventCopyWith(_$_LoadNewDataStoreEvent value,
          $Res Function(_$_LoadNewDataStoreEvent) then) =
      __$$_LoadNewDataStoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadNewDataStoreEventCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res>
    implements _$$_LoadNewDataStoreEventCopyWith<$Res> {
  __$$_LoadNewDataStoreEventCopyWithImpl(_$_LoadNewDataStoreEvent _value,
      $Res Function(_$_LoadNewDataStoreEvent) _then)
      : super(_value, (v) => _then(v as _$_LoadNewDataStoreEvent));

  @override
  _$_LoadNewDataStoreEvent get _value =>
      super._value as _$_LoadNewDataStoreEvent;
}

/// @nodoc

class _$_LoadNewDataStoreEvent extends _LoadNewDataStoreEvent {
  const _$_LoadNewDataStoreEvent() : super._();

  @override
  String toString() {
    return 'StoreEvent.loadNewData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadNewDataStoreEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNewData,
  }) {
    return loadNewData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNewData,
  }) {
    return loadNewData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNewData,
    required TResult orElse(),
  }) {
    if (loadNewData != null) {
      return loadNewData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNewDataStoreEvent value) loadNewData,
  }) {
    return loadNewData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadNewDataStoreEvent value)? loadNewData,
  }) {
    return loadNewData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNewDataStoreEvent value)? loadNewData,
    required TResult orElse(),
  }) {
    if (loadNewData != null) {
      return loadNewData(this);
    }
    return orElse();
  }
}

abstract class _LoadNewDataStoreEvent extends StoreEvent {
  const factory _LoadNewDataStoreEvent() = _$_LoadNewDataStoreEvent;
  const _LoadNewDataStoreEvent._() : super._();
}
