// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'details.freezed.dart';
part 'details.g.dart';

@freezed
class DetailsModel with _$DetailsModel {
  const factory DetailsModel({
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
  }) = _DetailsModel;

  factory DetailsModel.fromJson(Map<String, dynamic> json) =>
      _$DetailsModelFromJson(json);
}
