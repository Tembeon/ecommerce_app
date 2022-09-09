// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreResponse _$$_StoreResponseFromJson(Map<String, dynamic> json) =>
    _$_StoreResponse(
      homeStore: (json['home_store'] as List<dynamic>)
          .map((e) => HomeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSeller: (json['best_seller'] as List<dynamic>)
          .map((e) => BestSellerResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoreResponseToJson(_$_StoreResponse instance) =>
    <String, dynamic>{
      'home_store': instance.homeStore,
      'best_seller': instance.bestSeller,
    };

_$_HomeResponse _$$_HomeResponseFromJson(Map<String, dynamic> json) =>
    _$_HomeResponse(
      id: json['id'] as int,
      isNew: json['is_new'] as bool?,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      picture: json['picture'] as String,
      isBuy: json['is_buy'] as bool?,
    );

Map<String, dynamic> _$$_HomeResponseToJson(_$_HomeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_new': instance.isNew,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'is_buy': instance.isBuy,
    };

_$_BestSeller _$$_BestSellerFromJson(Map<String, dynamic> json) =>
    _$_BestSeller(
      id: json['id'] as int,
      isFavorites: json['is_favorites'] as bool?,
      title: json['title'] as String,
      priceWithoutDiscount: json['price_without_discount'] as int,
      discountPrice: json['discount_price'] as int,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$_BestSellerToJson(_$_BestSeller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favorites': instance.isFavorites,
      'title': instance.title,
      'price_without_discount': instance.priceWithoutDiscount,
      'discount_price': instance.discountPrice,
      'picture': instance.picture,
    };
