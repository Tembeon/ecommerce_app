// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_content.freezed.dart';
part 'cart_content.g.dart';

@freezed
class CartContent with _$CartContent {
  const factory CartContent({
      @JsonKey(name: 'basket') required List<CartItem> cartItems,
      required String delivery,
      required String id,
      required double total,

  }) = _CartContent;

  factory CartContent.fromJson(Map<String, dynamic> json) =>
      _$CartContentFromJson(json);
}


@freezed
class CartItem with _$CartItem {
  const factory CartItem({
      required int id,
      required String images,
      required double price,
      required String title,

  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}