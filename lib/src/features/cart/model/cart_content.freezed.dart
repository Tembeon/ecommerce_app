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

CartContent _$CartContentFromJson(Map<String, dynamic> json) {
  return _CartContent.fromJson(json);
}

/// @nodoc
mixin _$CartContent {
  @JsonKey(name: 'basket')
  List<CartItem> get cartItems => throw _privateConstructorUsedError;
  String get delivery => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'basket') List<CartItem> cartItems,
      String delivery,
      String id,
      double total});
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
    Object? delivery = freezed,
    Object? id = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
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
abstract class _$$_CartContentCopyWith<$Res>
    implements $CartContentCopyWith<$Res> {
  factory _$$_CartContentCopyWith(
          _$_CartContent value, $Res Function(_$_CartContent) then) =
      __$$_CartContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'basket') List<CartItem> cartItems,
      String delivery,
      String id,
      double total});
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
    Object? delivery = freezed,
    Object? id = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_CartContent(
      cartItems: cartItems == freezed
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
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
class _$_CartContent implements _CartContent {
  const _$_CartContent(
      {@JsonKey(name: 'basket') required final List<CartItem> cartItems,
      required this.delivery,
      required this.id,
      required this.total})
      : _cartItems = cartItems;

  factory _$_CartContent.fromJson(Map<String, dynamic> json) =>
      _$$_CartContentFromJson(json);

  final List<CartItem> _cartItems;
  @override
  @JsonKey(name: 'basket')
  List<CartItem> get cartItems {
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
    return 'CartContent(cartItems: $cartItems, delivery: $delivery, id: $id, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartContent &&
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
  _$$_CartContentCopyWith<_$_CartContent> get copyWith =>
      __$$_CartContentCopyWithImpl<_$_CartContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartContentToJson(
      this,
    );
  }
}

abstract class _CartContent implements CartContent {
  const factory _CartContent(
      {@JsonKey(name: 'basket') required final List<CartItem> cartItems,
      required final String delivery,
      required final String id,
      required final double total}) = _$_CartContent;

  factory _CartContent.fromJson(Map<String, dynamic> json) =
      _$_CartContent.fromJson;

  @override
  @JsonKey(name: 'basket')
  List<CartItem> get cartItems;
  @override
  String get delivery;
  @override
  String get id;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$_CartContentCopyWith<_$_CartContent> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  int get id => throw _privateConstructorUsedError;
  String get images => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res>;
  $Res call({int id, String images, double price, String title});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  final CartItem _value;
  // ignore: unused_field
  final $Res Function(CartItem) _then;

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
abstract class _$$_CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$$_CartItemCopyWith(
          _$_CartItem value, $Res Function(_$_CartItem) then) =
      __$$_CartItemCopyWithImpl<$Res>;
  @override
  $Res call({int id, String images, double price, String title});
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
    Object? id = freezed,
    Object? images = freezed,
    Object? price = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_CartItem(
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
class _$_CartItem implements _CartItem {
  const _$_CartItem(
      {required this.id,
      required this.images,
      required this.price,
      required this.title});

  factory _$_CartItem.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemFromJson(json);

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
    return 'CartItem(id: $id, images: $images, price: $price, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItem &&
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
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      __$$_CartItemCopyWithImpl<_$_CartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemToJson(
      this,
    );
  }
}

abstract class _CartItem implements CartItem {
  const factory _CartItem(
      {required final int id,
      required final String images,
      required final double price,
      required final String title}) = _$_CartItem;

  factory _CartItem.fromJson(Map<String, dynamic> json) = _$_CartItem.fromJson;

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
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
