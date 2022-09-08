// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_content.freezed.dart';

/// Contains information about cart items, delivery price, total price is USD.
@freezed
class CartContent with _$CartContent {
  const factory CartContent({
    required List<CartItem> cartItems,
    required String deliveryPrice,
    required double totalPrice,
  }) = _CartContent;
}

/// Contains information about one cart item: device image, price and name
@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required String image,
    required double price,
    required String name,
  }) = _CartItem;
}
