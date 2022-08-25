// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'one_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OneItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailsModel item) showingItem,
    required TResult Function(String colorHex) selectedColor,
    required TResult Function(String capacity) selectedCapacity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DetailsModel item)? showingItem,
    TResult Function(String colorHex)? selectedColor,
    TResult Function(String capacity)? selectedCapacity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailsModel item)? showingItem,
    TResult Function(String colorHex)? selectedColor,
    TResult Function(String capacity)? selectedCapacity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCartOneItemState value) showingItem,
    required TResult Function(_SelectColorOneItemState value) selectedColor,
    required TResult Function(_SelectCapacityOneItemState value)
        selectedCapacity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCartOneItemState value)? showingItem,
    TResult Function(_SelectColorOneItemState value)? selectedColor,
    TResult Function(_SelectCapacityOneItemState value)? selectedCapacity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCartOneItemState value)? showingItem,
    TResult Function(_SelectColorOneItemState value)? selectedColor,
    TResult Function(_SelectCapacityOneItemState value)? selectedCapacity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneItemStateCopyWith<$Res> {
  factory $OneItemStateCopyWith(
          OneItemState value, $Res Function(OneItemState) then) =
      _$OneItemStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OneItemStateCopyWithImpl<$Res> implements $OneItemStateCopyWith<$Res> {
  _$OneItemStateCopyWithImpl(this._value, this._then);

  final OneItemState _value;
  // ignore: unused_field
  final $Res Function(OneItemState) _then;
}

/// @nodoc
abstract class _$$_AddToCartOneItemStateCopyWith<$Res> {
  factory _$$_AddToCartOneItemStateCopyWith(_$_AddToCartOneItemState value,
          $Res Function(_$_AddToCartOneItemState) then) =
      __$$_AddToCartOneItemStateCopyWithImpl<$Res>;
  $Res call({DetailsModel item});

  $DetailsModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$_AddToCartOneItemStateCopyWithImpl<$Res>
    extends _$OneItemStateCopyWithImpl<$Res>
    implements _$$_AddToCartOneItemStateCopyWith<$Res> {
  __$$_AddToCartOneItemStateCopyWithImpl(_$_AddToCartOneItemState _value,
      $Res Function(_$_AddToCartOneItemState) _then)
      : super(_value, (v) => _then(v as _$_AddToCartOneItemState));

  @override
  _$_AddToCartOneItemState get _value =>
      super._value as _$_AddToCartOneItemState;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$_AddToCartOneItemState(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
    ));
  }

  @override
  $DetailsModelCopyWith<$Res> get item {
    return $DetailsModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_AddToCartOneItemState extends _AddToCartOneItemState {
  const _$_AddToCartOneItemState(this.item) : super._();

  @override
  final DetailsModel item;

  @override
  String toString() {
    return 'OneItemState.showingItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCartOneItemState &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_AddToCartOneItemStateCopyWith<_$_AddToCartOneItemState> get copyWith =>
      __$$_AddToCartOneItemStateCopyWithImpl<_$_AddToCartOneItemState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailsModel item) showingItem,
    required TResult Function(String colorHex) selectedColor,
    required TResult Function(String capacity) selectedCapacity,
  }) {
    return showingItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DetailsModel item)? showingItem,
    TResult Function(String colorHex)? selectedColor,
    TResult Function(String capacity)? selectedCapacity,
  }) {
    return showingItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailsModel item)? showingItem,
    TResult Function(String colorHex)? selectedColor,
    TResult Function(String capacity)? selectedCapacity,
    required TResult orElse(),
  }) {
    if (showingItem != null) {
      return showingItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCartOneItemState value) showingItem,
    required TResult Function(_SelectColorOneItemState value) selectedColor,
    required TResult Function(_SelectCapacityOneItemState value)
        selectedCapacity,
  }) {
    return showingItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCartOneItemState value)? showingItem,
    TResult Function(_SelectColorOneItemState value)? selectedColor,
    TResult Function(_SelectCapacityOneItemState value)? selectedCapacity,
  }) {
    return showingItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCartOneItemState value)? showingItem,
    TResult Function(_SelectColorOneItemState value)? selectedColor,
    TResult Function(_SelectCapacityOneItemState value)? selectedCapacity,
    required TResult orElse(),
  }) {
    if (showingItem != null) {
      return showingItem(this);
    }
    return orElse();
  }
}

abstract class _AddToCartOneItemState extends OneItemState {
  const factory _AddToCartOneItemState(final DetailsModel item) =
      _$_AddToCartOneItemState;
  const _AddToCartOneItemState._() : super._();

  DetailsModel get item;
  @JsonKey(ignore: true)
  _$$_AddToCartOneItemStateCopyWith<_$_AddToCartOneItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectColorOneItemStateCopyWith<$Res> {
  factory _$$_SelectColorOneItemStateCopyWith(_$_SelectColorOneItemState value,
          $Res Function(_$_SelectColorOneItemState) then) =
      __$$_SelectColorOneItemStateCopyWithImpl<$Res>;
  $Res call({String colorHex});
}

/// @nodoc
class __$$_SelectColorOneItemStateCopyWithImpl<$Res>
    extends _$OneItemStateCopyWithImpl<$Res>
    implements _$$_SelectColorOneItemStateCopyWith<$Res> {
  __$$_SelectColorOneItemStateCopyWithImpl(_$_SelectColorOneItemState _value,
      $Res Function(_$_SelectColorOneItemState) _then)
      : super(_value, (v) => _then(v as _$_SelectColorOneItemState));

  @override
  _$_SelectColorOneItemState get _value =>
      super._value as _$_SelectColorOneItemState;

  @override
  $Res call({
    Object? colorHex = freezed,
  }) {
    return _then(_$_SelectColorOneItemState(
      colorHex == freezed
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectColorOneItemState extends _SelectColorOneItemState {
  const _$_SelectColorOneItemState(this.colorHex) : super._();

  @override
  final String colorHex;

  @override
  String toString() {
    return 'OneItemState.selectedColor(colorHex: $colorHex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectColorOneItemState &&
            const DeepCollectionEquality().equals(other.colorHex, colorHex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(colorHex));

  @JsonKey(ignore: true)
  @override
  _$$_SelectColorOneItemStateCopyWith<_$_SelectColorOneItemState>
      get copyWith =>
          __$$_SelectColorOneItemStateCopyWithImpl<_$_SelectColorOneItemState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailsModel item) showingItem,
    required TResult Function(String colorHex) selectedColor,
    required TResult Function(String capacity) selectedCapacity,
  }) {
    return selectedColor(colorHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DetailsModel item)? showingItem,
    TResult Function(String colorHex)? selectedColor,
    TResult Function(String capacity)? selectedCapacity,
  }) {
    return selectedColor?.call(colorHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailsModel item)? showingItem,
    TResult Function(String colorHex)? selectedColor,
    TResult Function(String capacity)? selectedCapacity,
    required TResult orElse(),
  }) {
    if (selectedColor != null) {
      return selectedColor(colorHex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCartOneItemState value) showingItem,
    required TResult Function(_SelectColorOneItemState value) selectedColor,
    required TResult Function(_SelectCapacityOneItemState value)
        selectedCapacity,
  }) {
    return selectedColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCartOneItemState value)? showingItem,
    TResult Function(_SelectColorOneItemState value)? selectedColor,
    TResult Function(_SelectCapacityOneItemState value)? selectedCapacity,
  }) {
    return selectedColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCartOneItemState value)? showingItem,
    TResult Function(_SelectColorOneItemState value)? selectedColor,
    TResult Function(_SelectCapacityOneItemState value)? selectedCapacity,
    required TResult orElse(),
  }) {
    if (selectedColor != null) {
      return selectedColor(this);
    }
    return orElse();
  }
}

abstract class _SelectColorOneItemState extends OneItemState {
  const factory _SelectColorOneItemState(final String colorHex) =
      _$_SelectColorOneItemState;
  const _SelectColorOneItemState._() : super._();

  String get colorHex;
  @JsonKey(ignore: true)
  _$$_SelectColorOneItemStateCopyWith<_$_SelectColorOneItemState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCapacityOneItemStateCopyWith<$Res> {
  factory _$$_SelectCapacityOneItemStateCopyWith(
          _$_SelectCapacityOneItemState value,
          $Res Function(_$_SelectCapacityOneItemState) then) =
      __$$_SelectCapacityOneItemStateCopyWithImpl<$Res>;
  $Res call({String capacity});
}

/// @nodoc
class __$$_SelectCapacityOneItemStateCopyWithImpl<$Res>
    extends _$OneItemStateCopyWithImpl<$Res>
    implements _$$_SelectCapacityOneItemStateCopyWith<$Res> {
  __$$_SelectCapacityOneItemStateCopyWithImpl(
      _$_SelectCapacityOneItemState _value,
      $Res Function(_$_SelectCapacityOneItemState) _then)
      : super(_value, (v) => _then(v as _$_SelectCapacityOneItemState));

  @override
  _$_SelectCapacityOneItemState get _value =>
      super._value as _$_SelectCapacityOneItemState;

  @override
  $Res call({
    Object? capacity = freezed,
  }) {
    return _then(_$_SelectCapacityOneItemState(
      capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectCapacityOneItemState extends _SelectCapacityOneItemState {
  const _$_SelectCapacityOneItemState(this.capacity) : super._();

  @override
  final String capacity;

  @override
  String toString() {
    return 'OneItemState.selectedCapacity(capacity: $capacity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCapacityOneItemState &&
            const DeepCollectionEquality().equals(other.capacity, capacity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(capacity));

  @JsonKey(ignore: true)
  @override
  _$$_SelectCapacityOneItemStateCopyWith<_$_SelectCapacityOneItemState>
      get copyWith => __$$_SelectCapacityOneItemStateCopyWithImpl<
          _$_SelectCapacityOneItemState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailsModel item) showingItem,
    required TResult Function(String colorHex) selectedColor,
    required TResult Function(String capacity) selectedCapacity,
  }) {
    return selectedCapacity(capacity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DetailsModel item)? showingItem,
    TResult Function(String colorHex)? selectedColor,
    TResult Function(String capacity)? selectedCapacity,
  }) {
    return selectedCapacity?.call(capacity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailsModel item)? showingItem,
    TResult Function(String colorHex)? selectedColor,
    TResult Function(String capacity)? selectedCapacity,
    required TResult orElse(),
  }) {
    if (selectedCapacity != null) {
      return selectedCapacity(capacity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCartOneItemState value) showingItem,
    required TResult Function(_SelectColorOneItemState value) selectedColor,
    required TResult Function(_SelectCapacityOneItemState value)
        selectedCapacity,
  }) {
    return selectedCapacity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCartOneItemState value)? showingItem,
    TResult Function(_SelectColorOneItemState value)? selectedColor,
    TResult Function(_SelectCapacityOneItemState value)? selectedCapacity,
  }) {
    return selectedCapacity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCartOneItemState value)? showingItem,
    TResult Function(_SelectColorOneItemState value)? selectedColor,
    TResult Function(_SelectCapacityOneItemState value)? selectedCapacity,
    required TResult orElse(),
  }) {
    if (selectedCapacity != null) {
      return selectedCapacity(this);
    }
    return orElse();
  }
}

abstract class _SelectCapacityOneItemState extends OneItemState {
  const factory _SelectCapacityOneItemState(final String capacity) =
      _$_SelectCapacityOneItemState;
  const _SelectCapacityOneItemState._() : super._();

  String get capacity;
  @JsonKey(ignore: true)
  _$$_SelectCapacityOneItemStateCopyWith<_$_SelectCapacityOneItemState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OneItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String colorHex) selectColor,
    required TResult Function(String capacity) selectCapacity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String colorHex)? selectColor,
    TResult Function(String capacity)? selectCapacity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String colorHex)? selectColor,
    TResult Function(String capacity)? selectCapacity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectColorOneItemEvent value) selectColor,
    required TResult Function(_SelectCapacityOneItemEvent value) selectCapacity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectColorOneItemEvent value)? selectColor,
    TResult Function(_SelectCapacityOneItemEvent value)? selectCapacity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectColorOneItemEvent value)? selectColor,
    TResult Function(_SelectCapacityOneItemEvent value)? selectCapacity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneItemEventCopyWith<$Res> {
  factory $OneItemEventCopyWith(
          OneItemEvent value, $Res Function(OneItemEvent) then) =
      _$OneItemEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OneItemEventCopyWithImpl<$Res> implements $OneItemEventCopyWith<$Res> {
  _$OneItemEventCopyWithImpl(this._value, this._then);

  final OneItemEvent _value;
  // ignore: unused_field
  final $Res Function(OneItemEvent) _then;
}

/// @nodoc
abstract class _$$_SelectColorOneItemEventCopyWith<$Res> {
  factory _$$_SelectColorOneItemEventCopyWith(_$_SelectColorOneItemEvent value,
          $Res Function(_$_SelectColorOneItemEvent) then) =
      __$$_SelectColorOneItemEventCopyWithImpl<$Res>;
  $Res call({String colorHex});
}

/// @nodoc
class __$$_SelectColorOneItemEventCopyWithImpl<$Res>
    extends _$OneItemEventCopyWithImpl<$Res>
    implements _$$_SelectColorOneItemEventCopyWith<$Res> {
  __$$_SelectColorOneItemEventCopyWithImpl(_$_SelectColorOneItemEvent _value,
      $Res Function(_$_SelectColorOneItemEvent) _then)
      : super(_value, (v) => _then(v as _$_SelectColorOneItemEvent));

  @override
  _$_SelectColorOneItemEvent get _value =>
      super._value as _$_SelectColorOneItemEvent;

  @override
  $Res call({
    Object? colorHex = freezed,
  }) {
    return _then(_$_SelectColorOneItemEvent(
      colorHex == freezed
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectColorOneItemEvent extends _SelectColorOneItemEvent {
  const _$_SelectColorOneItemEvent(this.colorHex) : super._();

  @override
  final String colorHex;

  @override
  String toString() {
    return 'OneItemEvent.selectColor(colorHex: $colorHex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectColorOneItemEvent &&
            const DeepCollectionEquality().equals(other.colorHex, colorHex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(colorHex));

  @JsonKey(ignore: true)
  @override
  _$$_SelectColorOneItemEventCopyWith<_$_SelectColorOneItemEvent>
      get copyWith =>
          __$$_SelectColorOneItemEventCopyWithImpl<_$_SelectColorOneItemEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String colorHex) selectColor,
    required TResult Function(String capacity) selectCapacity,
  }) {
    return selectColor(colorHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String colorHex)? selectColor,
    TResult Function(String capacity)? selectCapacity,
  }) {
    return selectColor?.call(colorHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String colorHex)? selectColor,
    TResult Function(String capacity)? selectCapacity,
    required TResult orElse(),
  }) {
    if (selectColor != null) {
      return selectColor(colorHex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectColorOneItemEvent value) selectColor,
    required TResult Function(_SelectCapacityOneItemEvent value) selectCapacity,
  }) {
    return selectColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectColorOneItemEvent value)? selectColor,
    TResult Function(_SelectCapacityOneItemEvent value)? selectCapacity,
  }) {
    return selectColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectColorOneItemEvent value)? selectColor,
    TResult Function(_SelectCapacityOneItemEvent value)? selectCapacity,
    required TResult orElse(),
  }) {
    if (selectColor != null) {
      return selectColor(this);
    }
    return orElse();
  }
}

abstract class _SelectColorOneItemEvent extends OneItemEvent {
  const factory _SelectColorOneItemEvent(final String colorHex) =
      _$_SelectColorOneItemEvent;
  const _SelectColorOneItemEvent._() : super._();

  String get colorHex;
  @JsonKey(ignore: true)
  _$$_SelectColorOneItemEventCopyWith<_$_SelectColorOneItemEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCapacityOneItemEventCopyWith<$Res> {
  factory _$$_SelectCapacityOneItemEventCopyWith(
          _$_SelectCapacityOneItemEvent value,
          $Res Function(_$_SelectCapacityOneItemEvent) then) =
      __$$_SelectCapacityOneItemEventCopyWithImpl<$Res>;
  $Res call({String capacity});
}

/// @nodoc
class __$$_SelectCapacityOneItemEventCopyWithImpl<$Res>
    extends _$OneItemEventCopyWithImpl<$Res>
    implements _$$_SelectCapacityOneItemEventCopyWith<$Res> {
  __$$_SelectCapacityOneItemEventCopyWithImpl(
      _$_SelectCapacityOneItemEvent _value,
      $Res Function(_$_SelectCapacityOneItemEvent) _then)
      : super(_value, (v) => _then(v as _$_SelectCapacityOneItemEvent));

  @override
  _$_SelectCapacityOneItemEvent get _value =>
      super._value as _$_SelectCapacityOneItemEvent;

  @override
  $Res call({
    Object? capacity = freezed,
  }) {
    return _then(_$_SelectCapacityOneItemEvent(
      capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectCapacityOneItemEvent extends _SelectCapacityOneItemEvent {
  const _$_SelectCapacityOneItemEvent(this.capacity) : super._();

  @override
  final String capacity;

  @override
  String toString() {
    return 'OneItemEvent.selectCapacity(capacity: $capacity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCapacityOneItemEvent &&
            const DeepCollectionEquality().equals(other.capacity, capacity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(capacity));

  @JsonKey(ignore: true)
  @override
  _$$_SelectCapacityOneItemEventCopyWith<_$_SelectCapacityOneItemEvent>
      get copyWith => __$$_SelectCapacityOneItemEventCopyWithImpl<
          _$_SelectCapacityOneItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String colorHex) selectColor,
    required TResult Function(String capacity) selectCapacity,
  }) {
    return selectCapacity(capacity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String colorHex)? selectColor,
    TResult Function(String capacity)? selectCapacity,
  }) {
    return selectCapacity?.call(capacity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String colorHex)? selectColor,
    TResult Function(String capacity)? selectCapacity,
    required TResult orElse(),
  }) {
    if (selectCapacity != null) {
      return selectCapacity(capacity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectColorOneItemEvent value) selectColor,
    required TResult Function(_SelectCapacityOneItemEvent value) selectCapacity,
  }) {
    return selectCapacity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectColorOneItemEvent value)? selectColor,
    TResult Function(_SelectCapacityOneItemEvent value)? selectCapacity,
  }) {
    return selectCapacity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectColorOneItemEvent value)? selectColor,
    TResult Function(_SelectCapacityOneItemEvent value)? selectCapacity,
    required TResult orElse(),
  }) {
    if (selectCapacity != null) {
      return selectCapacity(this);
    }
    return orElse();
  }
}

abstract class _SelectCapacityOneItemEvent extends OneItemEvent {
  const factory _SelectCapacityOneItemEvent(final String capacity) =
      _$_SelectCapacityOneItemEvent;
  const _SelectCapacityOneItemEvent._() : super._();

  String get capacity;
  @JsonKey(ignore: true)
  _$$_SelectCapacityOneItemEventCopyWith<_$_SelectCapacityOneItemEvent>
      get copyWith => throw _privateConstructorUsedError;
}
