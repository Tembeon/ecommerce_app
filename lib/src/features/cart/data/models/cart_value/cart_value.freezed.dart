// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RawCartValue _$RawCartValueFromJson(Map<String, dynamic> json) {
  return _RawCartValue.fromJson(json);
}

/// @nodoc
mixin _$RawCartValue {
  @JsonKey(name: 'basket')
  List<RawCartItemValue> get cartItems => throw _privateConstructorUsedError;
  String get delivery => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawCartValueCopyWith<RawCartValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawCartValueCopyWith<$Res> {
  factory $RawCartValueCopyWith(
          RawCartValue value, $Res Function(RawCartValue) then) =
      _$RawCartValueCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'basket') List<RawCartItemValue> cartItems,
      String delivery,
      String id,
      double total});
}

/// @nodoc
class _$RawCartValueCopyWithImpl<$Res> implements $RawCartValueCopyWith<$Res> {
  _$RawCartValueCopyWithImpl(this._value, this._then);

  final RawCartValue _value;
  // ignore: unused_field
  final $Res Function(RawCartValue) _then;

  @override
  $Res call({
    Object? cartItems = freezed,
    Object? delivery = freezed,
    Object? id = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<RawCartItemValue>,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_RawCartValueCopyWith<$Res>
    implements $RawCartValueCopyWith<$Res> {
  factory _$$_RawCartValueCopyWith(
          _$_RawCartValue value, $Res Function(_$_RawCartValue) then) =
      __$$_RawCartValueCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'basket') List<RawCartItemValue> cartItems,
      String delivery,
      String id,
      double total});
}

/// @nodoc
class __$$_RawCartValueCopyWithImpl<$Res>
    extends _$RawCartValueCopyWithImpl<$Res>
    implements _$$_RawCartValueCopyWith<$Res> {
  __$$_RawCartValueCopyWithImpl(
      _$_RawCartValue _value, $Res Function(_$_RawCartValue) _then)
      : super(_value, (v) => _then(v as _$_RawCartValue));

  @override
  _$_RawCartValue get _value => super._value as _$_RawCartValue;

  @override
  $Res call({
    Object? cartItems = freezed,
    Object? delivery = freezed,
    Object? id = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_RawCartValue(
      cartItems: cartItems == freezed
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<RawCartItemValue>,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RawCartValue implements _RawCartValue {
  const _$_RawCartValue(
      {@JsonKey(name: 'basket') required final List<RawCartItemValue> cartItems,
      required this.delivery,
      required this.id,
      required this.total})
      : _cartItems = cartItems;

  factory _$_RawCartValue.fromJson(Map<String, dynamic> json) =>
      _$$_RawCartValueFromJson(json);

  final List<RawCartItemValue> _cartItems;
  @override
  @JsonKey(name: 'basket')
  List<RawCartItemValue> get cartItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  final String delivery;
  @override
  final String id;
  @override
  final double total;

  @override
  String toString() {
    return 'RawCartValue(cartItems: $cartItems, delivery: $delivery, id: $id, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RawCartValue &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            const DeepCollectionEquality().equals(other.delivery, delivery) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartItems),
      const DeepCollectionEquality().hash(delivery),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_RawCartValueCopyWith<_$_RawCartValue> get copyWith =>
      __$$_RawCartValueCopyWithImpl<_$_RawCartValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RawCartValueToJson(
      this,
    );
  }
}

abstract class _RawCartValue implements RawCartValue {
  const factory _RawCartValue(
      {@JsonKey(name: 'basket') required final List<RawCartItemValue> cartItems,
      required final String delivery,
      required final String id,
      required final double total}) = _$_RawCartValue;

  factory _RawCartValue.fromJson(Map<String, dynamic> json) =
      _$_RawCartValue.fromJson;

  @override
  @JsonKey(name: 'basket')
  List<RawCartItemValue> get cartItems;
  @override
  String get delivery;
  @override
  String get id;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$_RawCartValueCopyWith<_$_RawCartValue> get copyWith =>
      throw _privateConstructorUsedError;
}

RawCartItemValue _$RawCartItemValueFromJson(Map<String, dynamic> json) {
  return _RawCartItemValue.fromJson(json);
}

/// @nodoc
mixin _$RawCartItemValue {
  int get id => throw _privateConstructorUsedError;
  String get images => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawCartItemValueCopyWith<RawCartItemValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawCartItemValueCopyWith<$Res> {
  factory $RawCartItemValueCopyWith(
          RawCartItemValue value, $Res Function(RawCartItemValue) then) =
      _$RawCartItemValueCopyWithImpl<$Res>;
  $Res call({int id, String images, double price, String title});
}

/// @nodoc
class _$RawCartItemValueCopyWithImpl<$Res>
    implements $RawCartItemValueCopyWith<$Res> {
  _$RawCartItemValueCopyWithImpl(this._value, this._then);

  final RawCartItemValue _value;
  // ignore: unused_field
  final $Res Function(RawCartItemValue) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? price = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RawCartItemValueCopyWith<$Res>
    implements $RawCartItemValueCopyWith<$Res> {
  factory _$$_RawCartItemValueCopyWith(
          _$_RawCartItemValue value, $Res Function(_$_RawCartItemValue) then) =
      __$$_RawCartItemValueCopyWithImpl<$Res>;
  @override
  $Res call({int id, String images, double price, String title});
}

/// @nodoc
class __$$_RawCartItemValueCopyWithImpl<$Res>
    extends _$RawCartItemValueCopyWithImpl<$Res>
    implements _$$_RawCartItemValueCopyWith<$Res> {
  __$$_RawCartItemValueCopyWithImpl(
      _$_RawCartItemValue _value, $Res Function(_$_RawCartItemValue) _then)
      : super(_value, (v) => _then(v as _$_RawCartItemValue));

  @override
  _$_RawCartItemValue get _value => super._value as _$_RawCartItemValue;

  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? price = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_RawCartItemValue(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RawCartItemValue implements _RawCartItemValue {
  const _$_RawCartItemValue(
      {required this.id,
      required this.images,
      required this.price,
      required this.title});

  factory _$_RawCartItemValue.fromJson(Map<String, dynamic> json) =>
      _$$_RawCartItemValueFromJson(json);

  @override
  final int id;
  @override
  final String images;
  @override
  final double price;
  @override
  final String title;

  @override
  String toString() {
    return 'RawCartItemValue(id: $id, images: $images, price: $price, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RawCartItemValue &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_RawCartItemValueCopyWith<_$_RawCartItemValue> get copyWith =>
      __$$_RawCartItemValueCopyWithImpl<_$_RawCartItemValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RawCartItemValueToJson(
      this,
    );
  }
}

abstract class _RawCartItemValue implements RawCartItemValue {
  const factory _RawCartItemValue(
      {required final int id,
      required final String images,
      required final double price,
      required final String title}) = _$_RawCartItemValue;

  factory _RawCartItemValue.fromJson(Map<String, dynamic> json) =
      _$_RawCartItemValue.fromJson;

  @override
  int get id;
  @override
  String get images;
  @override
  double get price;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_RawCartItemValueCopyWith<_$_RawCartItemValue> get copyWith =>
      throw _privateConstructorUsedError;
}
