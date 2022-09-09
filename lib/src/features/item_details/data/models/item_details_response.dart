// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_details_response.freezed.dart';
part 'item_details_response.g.dart';

@freezed
class DetailsResponse with _$DetailsResponse {
  const factory DetailsResponse({
    @JsonKey(name: 'CPU') required String cpu,
    @JsonKey(name: 'camera') required String camera,
    @JsonKey(name: 'capacity') required List<String> capacity,
    @JsonKey(name: 'color') required List<String> color,
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'images') required List<String> images,
    @JsonKey(name: 'isFavorites') required bool isFavorites,
    @JsonKey(name: 'price') required int price,
    @JsonKey(name: 'rating') required double rating,
    @JsonKey(name: 'sd') required String sd,
    @JsonKey(name: 'ssd') required String ssd,
    @JsonKey(name: 'title') required String title,
  }) = _DetailsResponse;

  factory DetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailsResponseFromJson(json);
}
