// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesState {
  int get index => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) selected,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedCategoriesState value) selected,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedCategoriesState value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedCategoriesState value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res>;

  $Res call({int index});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  final CategoriesState _value;

  // ignore: unused_field
  final $Res Function(CategoriesState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SelectedCategoriesStateCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$_SelectedCategoriesStateCopyWith(_$_SelectedCategoriesState value,
          $Res Function(_$_SelectedCategoriesState) then) =
      __$$_SelectedCategoriesStateCopyWithImpl<$Res>;

  @override
  $Res call({int index});
}

/// @nodoc
class __$$_SelectedCategoriesStateCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$$_SelectedCategoriesStateCopyWith<$Res> {
  __$$_SelectedCategoriesStateCopyWithImpl(_$_SelectedCategoriesState _value,
      $Res Function(_$_SelectedCategoriesState) _then)
      : super(_value, (v) => _then(v as _$_SelectedCategoriesState));

  @override
  _$_SelectedCategoriesState get _value =>
      super._value as _$_SelectedCategoriesState;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_SelectedCategoriesState(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectedCategoriesState extends _SelectedCategoriesState {
  const _$_SelectedCategoriesState(this.index) : super._();

  @override
  final int index;

  @override
  String toString() {
    return 'CategoriesState.selected(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedCategoriesState &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_SelectedCategoriesStateCopyWith<_$_SelectedCategoriesState>
      get copyWith =>
          __$$_SelectedCategoriesStateCopyWithImpl<_$_SelectedCategoriesState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) selected,
  }) {
    return selected(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? selected,
  }) {
    return selected?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedCategoriesState value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedCategoriesState value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedCategoriesState value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _SelectedCategoriesState extends CategoriesState {
  const factory _SelectedCategoriesState(final int index) =
      _$_SelectedCategoriesState;

  const _SelectedCategoriesState._() : super._();

  @override
  int get index;

  @override
  @JsonKey(ignore: true)
  _$$_SelectedCategoriesStateCopyWith<_$_SelectedCategoriesState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesEvent {
  int get newIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newIndex) selectItem,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newIndex)? selectItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newIndex)? selectItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectItemCategoriesEvent value) selectItem,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectItemCategoriesEvent value)? selectItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectItemCategoriesEvent value)? selectItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesEventCopyWith<CategoriesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res>;

  $Res call({int newIndex});
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  final CategoriesEvent _value;

  // ignore: unused_field
  final $Res Function(CategoriesEvent) _then;

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
abstract class _$$_SelectItemCategoriesEventCopyWith<$Res>
    implements $CategoriesEventCopyWith<$Res> {
  factory _$$_SelectItemCategoriesEventCopyWith(
          _$_SelectItemCategoriesEvent value,
          $Res Function(_$_SelectItemCategoriesEvent) then) =
      __$$_SelectItemCategoriesEventCopyWithImpl<$Res>;

  @override
  $Res call({int newIndex});
}

/// @nodoc
class __$$_SelectItemCategoriesEventCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$$_SelectItemCategoriesEventCopyWith<$Res> {
  __$$_SelectItemCategoriesEventCopyWithImpl(
      _$_SelectItemCategoriesEvent _value,
      $Res Function(_$_SelectItemCategoriesEvent) _then)
      : super(_value, (v) => _then(v as _$_SelectItemCategoriesEvent));

  @override
  _$_SelectItemCategoriesEvent get _value =>
      super._value as _$_SelectItemCategoriesEvent;

  @override
  $Res call({
    Object? newIndex = freezed,
  }) {
    return _then(_$_SelectItemCategoriesEvent(
      newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectItemCategoriesEvent extends _SelectItemCategoriesEvent {
  const _$_SelectItemCategoriesEvent(this.newIndex) : super._();

  @override
  final int newIndex;

  @override
  String toString() {
    return 'CategoriesEvent.selectItem(newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectItemCategoriesEvent &&
            const DeepCollectionEquality().equals(other.newIndex, newIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newIndex));

  @JsonKey(ignore: true)
  @override
  _$$_SelectItemCategoriesEventCopyWith<_$_SelectItemCategoriesEvent>
      get copyWith => __$$_SelectItemCategoriesEventCopyWithImpl<
          _$_SelectItemCategoriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newIndex) selectItem,
  }) {
    return selectItem(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newIndex)? selectItem,
  }) {
    return selectItem?.call(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newIndex)? selectItem,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectItemCategoriesEvent value) selectItem,
  }) {
    return selectItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectItemCategoriesEvent value)? selectItem,
  }) {
    return selectItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectItemCategoriesEvent value)? selectItem,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(this);
    }
    return orElse();
  }
}

abstract class _SelectItemCategoriesEvent extends CategoriesEvent {
  const factory _SelectItemCategoriesEvent(final int newIndex) =
      _$_SelectItemCategoriesEvent;

  const _SelectItemCategoriesEvent._() : super._();

  @override
  int get newIndex;

  @override
  @JsonKey(ignore: true)
  _$$_SelectItemCategoriesEventCopyWith<_$_SelectItemCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}
