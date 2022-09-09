// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailsResponse _$$_DetailsResponseFromJson(Map<String, dynamic> json) =>
    _$_DetailsResponse(
      cpu: json['CPU'] as String,
      camera: json['camera'] as String,
      capacity:
          (json['capacity'] as List<dynamic>).map((e) => e as String).toList(),
      color: (json['color'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      isFavorites: json['isFavorites'] as bool,
      price: json['price'] as int,
      rating: (json['rating'] as num).toDouble(),
      sd: json['sd'] as String,
      ssd: json['ssd'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_DetailsResponseToJson(_$_DetailsResponse instance) =>
    <String, dynamic>{
      'CPU': instance.cpu,
      'camera': instance.camera,
      'capacity': instance.capacity,
      'color': instance.color,
      'id': instance.id,
      'images': instance.images,
      'isFavorites': instance.isFavorites,
      'price': instance.price,
      'rating': instance.rating,
      'sd': instance.sd,
      'ssd': instance.ssd,
      'title': instance.title,
    };
