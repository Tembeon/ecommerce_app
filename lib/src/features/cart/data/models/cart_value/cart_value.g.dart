// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawCartValue _$$_RawCartValueFromJson(Map<String, dynamic> json) =>
    _$_RawCartValue(
      cartItems: (json['basket'] as List<dynamic>)
          .map((e) => RawCartItemValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery: json['delivery'] as String,
      id: json['id'] as String,
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RawCartValueToJson(_$_RawCartValue instance) =>
    <String, dynamic>{
      'basket': instance.cartItems,
      'delivery': instance.delivery,
      'id': instance.id,
      'total': instance.total,
    };

_$_RawCartItemValue _$$_RawCartItemValueFromJson(Map<String, dynamic> json) =>
    _$_RawCartItemValue(
      id: json['id'] as int,
      images: json['images'] as String,
      price: (json['price'] as num).toDouble(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_RawCartItemValueToJson(_$_RawCartItemValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'price': instance.price,
      'title': instance.title,
    };
