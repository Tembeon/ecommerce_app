// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartContent _$$_CartContentFromJson(Map<String, dynamic> json) =>
    _$_CartContent(
      cartItems: (json['basket'] as List<dynamic>)
          .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery: json['delivery'] as String,
      id: json['id'] as String,
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CartContentToJson(_$_CartContent instance) =>
    <String, dynamic>{
      'basket': instance.cartItems,
      'delivery': instance.delivery,
      'id': instance.id,
      'total': instance.total,
    };

_$_CartItem _$$_CartItemFromJson(Map<String, dynamic> json) => _$_CartItem(
      id: json['id'] as int,
      images: json['images'] as String,
      price: (json['price'] as num).toDouble(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'price': instance.price,
      'title': instance.title,
    };
