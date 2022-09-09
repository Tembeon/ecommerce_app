// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartContent {
  List<CartItem> get cartItems => throw _privateConstructorUsedError;
  String get deliveryPrice => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartContentCopyWith<CartContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartContentCopyWith<$Res> {
  factory $CartContentCopyWith(
          CartContent value, $Res Function(CartContent) then) =
      _$CartContentCopyWithImpl<$Res>;
  $Res call(
      {List<CartItem> cartItems, String deliveryPrice, double totalPrice});
}

/// @nodoc
class _$CartContentCopyWithImpl<$Res> implements $CartContentCopyWith<$Res> {
  _$CartContentCopyWithImpl(this._value, this._then);

  final CartContent _value;
  // ignore: unused_field
  final $Res Function(CartContent) _then;

  @override
  $Res call({
    Object? cartItems = freezed,
    Object? deliveryPrice = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      deliveryPrice: deliveryPrice == freezed
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_CartContentCopyWith<$Res>
    implements $CartContentCopyWith<$Res> {
  factory _$$_CartContentCopyWith(
          _$_CartContent value, $Res Function(_$_CartContent) then) =
      __$$_CartContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CartItem> cartItems, String deliveryPrice, double totalPrice});
}

/// @nodoc
class __$$_CartContentCopyWithImpl<$Res> extends _$CartContentCopyWithImpl<$Res>
    implements _$$_CartContentCopyWith<$Res> {
  __$$_CartContentCopyWithImpl(
      _$_CartContent _value, $Res Function(_$_CartContent) _then)
      : super(_value, (v) => _then(v as _$_CartContent));

  @override
  _$_CartContent get _value => super._value as _$_CartContent;

  @override
  $Res call({
    Object? cartItems = freezed,
    Object? deliveryPrice = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$_CartContent(
      cartItems: cartItems == freezed
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      deliveryPrice: deliveryPrice == freezed
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CartContent implements _CartContent {
  const _$_CartContent(
      {required final List<CartItem> cartItems,
      required this.deliveryPrice,
      required this.totalPrice})
      : _cartItems = cartItems;

  final List<CartItem> _cartItems;
  @override
  List<CartItem> get cartItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  final String deliveryPrice;
  @override
  final double totalPrice;

  @override
  String toString() {
    return 'CartContent(cartItems: $cartItems, deliveryPrice: $deliveryPrice, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartContent &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            const DeepCollectionEquality()
                .equals(other.deliveryPrice, deliveryPrice) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartItems),
      const DeepCollectionEquality().hash(deliveryPrice),
      const DeepCollectionEquality().hash(totalPrice));

  @JsonKey(ignore: true)
  @override
  _$$_CartContentCopyWith<_$_CartContent> get copyWith =>
      __$$_CartContentCopyWithImpl<_$_CartContent>(this, _$identity);
}

abstract class _CartContent implements CartContent {
  const factory _CartContent(
      {required final List<CartItem> cartItems,
      required final String deliveryPrice,
      required final double totalPrice}) = _$_CartContent;

  @override
  List<CartItem> get cartItems;
  @override
  String get deliveryPrice;
  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_CartContentCopyWith<_$_CartContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartItem {
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res>;
  $Res call({String image, double price, String name});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  final CartItem _value;
  // ignore: unused_field
  final $Res Function(CartItem) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? price = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$$_CartItemCopyWith(
          _$_CartItem value, $Res Function(_$_CartItem) then) =
      __$$_CartItemCopyWithImpl<$Res>;
  @override
  $Res call({String image, double price, String name});
}

/// @nodoc
class __$$_CartItemCopyWithImpl<$Res> extends _$CartItemCopyWithImpl<$Res>
    implements _$$_CartItemCopyWith<$Res> {
  __$$_CartItemCopyWithImpl(
      _$_CartItem _value, $Res Function(_$_CartItem) _then)
      : super(_value, (v) => _then(v as _$_CartItem));

  @override
  _$_CartItem get _value => super._value as _$_CartItem;

  @override
  $Res call({
    Object? image = freezed,
    Object? price = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CartItem(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CartItem implements _CartItem {
  const _$_CartItem(
      {required this.image, required this.price, required this.name});

  @override
  final String image;
  @override
  final double price;
  @override
  final String name;

  @override
  String toString() {
    return 'CartItem(image: $image, price: $price, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItem &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      __$$_CartItemCopyWithImpl<_$_CartItem>(this, _$identity);
}

abstract class _CartItem implements CartItem {
  const factory _CartItem(
      {required final String image,
      required final double price,
      required final String name}) = _$_CartItem;

  @override
  String get image;
  @override
  double get price;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
