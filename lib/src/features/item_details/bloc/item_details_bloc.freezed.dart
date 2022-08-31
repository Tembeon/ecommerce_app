// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DetailsModel> details) showDetailsWith,
    required TResult Function() loading,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DetailsModel> details)? showDetailsWith,
    TResult Function()? loading,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DetailsModel> details)? showDetailsWith,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialItemDetailsState value) showDetailsWith,
    required TResult Function(_LoadingItemDetailsState value) loading,
    required TResult Function(_FailureItemDetailsState value) failure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialItemDetailsState value)? showDetailsWith,
    TResult Function(_LoadingItemDetailsState value)? loading,
    TResult Function(_FailureItemDetailsState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialItemDetailsState value)? showDetailsWith,
    TResult Function(_LoadingItemDetailsState value)? loading,
    TResult Function(_FailureItemDetailsState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailsStateCopyWith<$Res> {
  factory $ItemDetailsStateCopyWith(
          ItemDetailsState value, $Res Function(ItemDetailsState) then) =
      _$ItemDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemDetailsStateCopyWithImpl<$Res>
    implements $ItemDetailsStateCopyWith<$Res> {
  _$ItemDetailsStateCopyWithImpl(this._value, this._then);

  final ItemDetailsState _value;

  // ignore: unused_field
  final $Res Function(ItemDetailsState) _then;
}

/// @nodoc
abstract class _$$_InitialItemDetailsStateCopyWith<$Res> {
  factory _$$_InitialItemDetailsStateCopyWith(_$_InitialItemDetailsState value,
          $Res Function(_$_InitialItemDetailsState) then) =
      __$$_InitialItemDetailsStateCopyWithImpl<$Res>;

  $Res call({List<DetailsModel> details});
}

/// @nodoc
class __$$_InitialItemDetailsStateCopyWithImpl<$Res>
    extends _$ItemDetailsStateCopyWithImpl<$Res>
    implements _$$_InitialItemDetailsStateCopyWith<$Res> {
  __$$_InitialItemDetailsStateCopyWithImpl(_$_InitialItemDetailsState _value,
      $Res Function(_$_InitialItemDetailsState) _then)
      : super(_value, (v) => _then(v as _$_InitialItemDetailsState));

  @override
  _$_InitialItemDetailsState get _value =>
      super._value as _$_InitialItemDetailsState;

  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$_InitialItemDetailsState(
      details == freezed
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailsModel>,
    ));
  }
}

/// @nodoc

class _$_InitialItemDetailsState extends _InitialItemDetailsState {
  const _$_InitialItemDetailsState(final List<DetailsModel> details)
      : _details = details,
        super._();

  final List<DetailsModel> _details;

  @override
  List<DetailsModel> get details {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'ItemDetailsState.showDetailsWith(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialItemDetailsState &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  _$$_InitialItemDetailsStateCopyWith<_$_InitialItemDetailsState>
      get copyWith =>
          __$$_InitialItemDetailsStateCopyWithImpl<_$_InitialItemDetailsState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DetailsModel> details) showDetailsWith,
    required TResult Function() loading,
    required TResult Function(String message) failure,
  }) {
    return showDetailsWith(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DetailsModel> details)? showDetailsWith,
    TResult Function()? loading,
    TResult Function(String message)? failure,
  }) {
    return showDetailsWith?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DetailsModel> details)? showDetailsWith,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (showDetailsWith != null) {
      return showDetailsWith(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialItemDetailsState value) showDetailsWith,
    required TResult Function(_LoadingItemDetailsState value) loading,
    required TResult Function(_FailureItemDetailsState value) failure,
  }) {
    return showDetailsWith(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialItemDetailsState value)? showDetailsWith,
    TResult Function(_LoadingItemDetailsState value)? loading,
    TResult Function(_FailureItemDetailsState value)? failure,
  }) {
    return showDetailsWith?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialItemDetailsState value)? showDetailsWith,
    TResult Function(_LoadingItemDetailsState value)? loading,
    TResult Function(_FailureItemDetailsState value)? failure,
    required TResult orElse(),
  }) {
    if (showDetailsWith != null) {
      return showDetailsWith(this);
    }
    return orElse();
  }
}

abstract class _InitialItemDetailsState extends ItemDetailsState {
  const factory _InitialItemDetailsState(final List<DetailsModel> details) =
      _$_InitialItemDetailsState;

  const _InitialItemDetailsState._() : super._();

  List<DetailsModel> get details;

  @JsonKey(ignore: true)
  _$$_InitialItemDetailsStateCopyWith<_$_InitialItemDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingItemDetailsStateCopyWith<$Res> {
  factory _$$_LoadingItemDetailsStateCopyWith(_$_LoadingItemDetailsState value,
          $Res Function(_$_LoadingItemDetailsState) then) =
      __$$_LoadingItemDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingItemDetailsStateCopyWithImpl<$Res>
    extends _$ItemDetailsStateCopyWithImpl<$Res>
    implements _$$_LoadingItemDetailsStateCopyWith<$Res> {
  __$$_LoadingItemDetailsStateCopyWithImpl(_$_LoadingItemDetailsState _value,
      $Res Function(_$_LoadingItemDetailsState) _then)
      : super(_value, (v) => _then(v as _$_LoadingItemDetailsState));

  @override
  _$_LoadingItemDetailsState get _value =>
      super._value as _$_LoadingItemDetailsState;
}

/// @nodoc

class _$_LoadingItemDetailsState extends _LoadingItemDetailsState {
  const _$_LoadingItemDetailsState() : super._();

  @override
  String toString() {
    return 'ItemDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingItemDetailsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DetailsModel> details) showDetailsWith,
    required TResult Function() loading,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DetailsModel> details)? showDetailsWith,
    TResult Function()? loading,
    TResult Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DetailsModel> details)? showDetailsWith,
    TResult Function()? loading,
    TResult Function(String message)? failure,
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
    required TResult Function(_InitialItemDetailsState value) showDetailsWith,
    required TResult Function(_LoadingItemDetailsState value) loading,
    required TResult Function(_FailureItemDetailsState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialItemDetailsState value)? showDetailsWith,
    TResult Function(_LoadingItemDetailsState value)? loading,
    TResult Function(_FailureItemDetailsState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialItemDetailsState value)? showDetailsWith,
    TResult Function(_LoadingItemDetailsState value)? loading,
    TResult Function(_FailureItemDetailsState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingItemDetailsState extends ItemDetailsState {
  const factory _LoadingItemDetailsState() = _$_LoadingItemDetailsState;

  const _LoadingItemDetailsState._() : super._();
}

/// @nodoc
abstract class _$$_FailureItemDetailsStateCopyWith<$Res> {
  factory _$$_FailureItemDetailsStateCopyWith(_$_FailureItemDetailsState value,
          $Res Function(_$_FailureItemDetailsState) then) =
      __$$_FailureItemDetailsStateCopyWithImpl<$Res>;

  $Res call({String message});
}

/// @nodoc
class __$$_FailureItemDetailsStateCopyWithImpl<$Res>
    extends _$ItemDetailsStateCopyWithImpl<$Res>
    implements _$$_FailureItemDetailsStateCopyWith<$Res> {
  __$$_FailureItemDetailsStateCopyWithImpl(_$_FailureItemDetailsState _value,
      $Res Function(_$_FailureItemDetailsState) _then)
      : super(_value, (v) => _then(v as _$_FailureItemDetailsState));

  @override
  _$_FailureItemDetailsState get _value =>
      super._value as _$_FailureItemDetailsState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_FailureItemDetailsState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureItemDetailsState extends _FailureItemDetailsState {
  const _$_FailureItemDetailsState({this.message = 'An error has occurred'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ItemDetailsState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureItemDetailsState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_FailureItemDetailsStateCopyWith<_$_FailureItemDetailsState>
      get copyWith =>
          __$$_FailureItemDetailsStateCopyWithImpl<_$_FailureItemDetailsState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DetailsModel> details) showDetailsWith,
    required TResult Function() loading,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DetailsModel> details)? showDetailsWith,
    TResult Function()? loading,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DetailsModel> details)? showDetailsWith,
    TResult Function()? loading,
    TResult Function(String message)? failure,
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
    required TResult Function(_InitialItemDetailsState value) showDetailsWith,
    required TResult Function(_LoadingItemDetailsState value) loading,
    required TResult Function(_FailureItemDetailsState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialItemDetailsState value)? showDetailsWith,
    TResult Function(_LoadingItemDetailsState value)? loading,
    TResult Function(_FailureItemDetailsState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialItemDetailsState value)? showDetailsWith,
    TResult Function(_LoadingItemDetailsState value)? loading,
    TResult Function(_FailureItemDetailsState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureItemDetailsState extends ItemDetailsState {
  const factory _FailureItemDetailsState({final String message}) =
      _$_FailureItemDetailsState;

  const _FailureItemDetailsState._() : super._();

  String get message;

  @JsonKey(ignore: true)
  _$$_FailureItemDetailsStateCopyWith<_$_FailureItemDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemDetailsEvent {
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
    required TResult Function(_LoadDataItemDetailsEvent value) loadData,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDataItemDetailsEvent value)? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataItemDetailsEvent value)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailsEventCopyWith<$Res> {
  factory $ItemDetailsEventCopyWith(
          ItemDetailsEvent value, $Res Function(ItemDetailsEvent) then) =
      _$ItemDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemDetailsEventCopyWithImpl<$Res>
    implements $ItemDetailsEventCopyWith<$Res> {
  _$ItemDetailsEventCopyWithImpl(this._value, this._then);

  final ItemDetailsEvent _value;

  // ignore: unused_field
  final $Res Function(ItemDetailsEvent) _then;
}

/// @nodoc
abstract class _$$_LoadDataItemDetailsEventCopyWith<$Res> {
  factory _$$_LoadDataItemDetailsEventCopyWith(
          _$_LoadDataItemDetailsEvent value,
          $Res Function(_$_LoadDataItemDetailsEvent) then) =
      __$$_LoadDataItemDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadDataItemDetailsEventCopyWithImpl<$Res>
    extends _$ItemDetailsEventCopyWithImpl<$Res>
    implements _$$_LoadDataItemDetailsEventCopyWith<$Res> {
  __$$_LoadDataItemDetailsEventCopyWithImpl(_$_LoadDataItemDetailsEvent _value,
      $Res Function(_$_LoadDataItemDetailsEvent) _then)
      : super(_value, (v) => _then(v as _$_LoadDataItemDetailsEvent));

  @override
  _$_LoadDataItemDetailsEvent get _value =>
      super._value as _$_LoadDataItemDetailsEvent;
}

/// @nodoc

class _$_LoadDataItemDetailsEvent extends _LoadDataItemDetailsEvent {
  const _$_LoadDataItemDetailsEvent() : super._();

  @override
  String toString() {
    return 'ItemDetailsEvent.loadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadDataItemDetailsEvent);
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
    required TResult Function(_LoadDataItemDetailsEvent value) loadData,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDataItemDetailsEvent value)? loadData,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataItemDetailsEvent value)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadDataItemDetailsEvent extends ItemDetailsEvent {
  const factory _LoadDataItemDetailsEvent() = _$_LoadDataItemDetailsEvent;

  const _LoadDataItemDetailsEvent._() : super._();
}
