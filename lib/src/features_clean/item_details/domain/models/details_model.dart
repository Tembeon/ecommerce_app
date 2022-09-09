// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_model.freezed.dart';

@freezed // todo: device specs to other class
class DetailsModel with _$DetailsModel {
  const factory DetailsModel({
    required String deviceCpu,
    required String deviceCamera,
    required List<String> listOfCapacities,
    required List<String> listOfColors,
    required String id,
    required List<String> listOfImages,
    required bool isFavorites,
    required int price,
    required double rating,
    required String deviceSd,
    required String deviceRam,
    required String deviceName,
  }) = _DetailsModel;
}
