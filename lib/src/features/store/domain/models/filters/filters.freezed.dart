// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FiltersModel {
// e.x.: ['Samsung', 'Iphone']
  List<String> get brands =>
      throw _privateConstructorUsedError; // e.x.: ['$300 - $500', '$500 - $1000']
  List<String> get prices =>
      throw _privateConstructorUsedError; //e.x.: ['4.5 to 5.5 inches', '5.5 to 6.5 inches']
  List<String> get sizes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FiltersModelCopyWith<FiltersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersModelCopyWith<$Res> {
  factory $FiltersModelCopyWith(
          FiltersModel value, $Res Function(FiltersModel) then) =
      _$FiltersModelCopyWithImpl<$Res>;
  $Res call({List<String> brands, List<String> prices, List<String> sizes});
}

/// @nodoc
class _$FiltersModelCopyWithImpl<$Res> implements $FiltersModelCopyWith<$Res> {
  _$FiltersModelCopyWithImpl(this._value, this._then);

  final FiltersModel _value;
  // ignore: unused_field
  final $Res Function(FiltersModel) _then;

  @override
  $Res call({
    Object? brands = freezed,
    Object? prices = freezed,
    Object? sizes = freezed,
  }) {
    return _then(_value.copyWith(
      brands: brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<String>,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_FiltersModelCopyWith<$Res>
    implements $FiltersModelCopyWith<$Res> {
  factory _$$_FiltersModelCopyWith(
          _$_FiltersModel value, $Res Function(_$_FiltersModel) then) =
      __$$_FiltersModelCopyWithImpl<$Res>;
  @override
  $Res call({List<String> brands, List<String> prices, List<String> sizes});
}

/// @nodoc
class __$$_FiltersModelCopyWithImpl<$Res>
    extends _$FiltersModelCopyWithImpl<$Res>
    implements _$$_FiltersModelCopyWith<$Res> {
  __$$_FiltersModelCopyWithImpl(
      _$_FiltersModel _value, $Res Function(_$_FiltersModel) _then)
      : super(_value, (v) => _then(v as _$_FiltersModel));

  @override
  _$_FiltersModel get _value => super._value as _$_FiltersModel;

  @override
  $Res call({
    Object? brands = freezed,
    Object? prices = freezed,
    Object? sizes = freezed,
  }) {
    return _then(_$_FiltersModel(
      brands: brands == freezed
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<String>,
      prices: prices == freezed
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sizes: sizes == freezed
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_FiltersModel implements _FiltersModel {
  const _$_FiltersModel(
      {required final List<String> brands,
      required final List<String> prices,
      required final List<String> sizes})
      : _brands = brands,
        _prices = prices,
        _sizes = sizes;

// e.x.: ['Samsung', 'Iphone']
  final List<String> _brands;
// e.x.: ['Samsung', 'Iphone']
  @override
  List<String> get brands {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

// e.x.: ['$300 - $500', '$500 - $1000']
  final List<String> _prices;
// e.x.: ['$300 - $500', '$500 - $1000']
  @override
  List<String> get prices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

//e.x.: ['4.5 to 5.5 inches', '5.5 to 6.5 inches']
  final List<String> _sizes;
//e.x.: ['4.5 to 5.5 inches', '5.5 to 6.5 inches']
  @override
  List<String> get sizes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizes);
  }

  @override
  String toString() {
    return 'FiltersModel(brands: $brands, prices: $prices, sizes: $sizes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FiltersModel &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_brands),
      const DeepCollectionEquality().hash(_prices),
      const DeepCollectionEquality().hash(_sizes));

  @JsonKey(ignore: true)
  @override
  _$$_FiltersModelCopyWith<_$_FiltersModel> get copyWith =>
      __$$_FiltersModelCopyWithImpl<_$_FiltersModel>(this, _$identity);
}

abstract class _FiltersModel implements FiltersModel {
  const factory _FiltersModel(
      {required final List<String> brands,
      required final List<String> prices,
      required final List<String> sizes}) = _$_FiltersModel;

  @override // e.x.: ['Samsung', 'Iphone']
  List<String> get brands;
  @override // e.x.: ['$300 - $500', '$500 - $1000']
  List<String> get prices;
  @override //e.x.: ['4.5 to 5.5 inches', '5.5 to 6.5 inches']
  List<String> get sizes;
  @override
  @JsonKey(ignore: true)
  _$$_FiltersModelCopyWith<_$_FiltersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
