// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_value.freezed.dart';
part 'cart_value.g.dart';

/// Contains raw information from server
/// about cart items, delivery price, total price is USD.
@freezed
class RawCartValue with _$RawCartValue {
  const factory RawCartValue({
    @JsonKey(name: 'basket') required List<RawCartItemValue> cartItems,
    required String delivery,
    required String id,
    required double total,
  }) = _RawCartValue;

  factory RawCartValue.fromJson(Map<String, dynamic> json) =>
      _$RawCartValueFromJson(json);
}

/// Contains raw information from server
/// about one cart item: device image, price and name.
@freezed
class RawCartItemValue with _$RawCartItemValue {
  const factory RawCartItemValue({
    required int id,
    required String images,
    required double price,
    required String title,
  }) = _RawCartItemValue;

  factory RawCartItemValue.fromJson(Map<String, dynamic> json) =>
      _$RawCartItemValueFromJson(json);
}
