// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_model.freezed.dart';

@freezed
class DetailsModel with _$DetailsModel {
  const factory DetailsModel({
    required List<String> listOfCapacities,
    required List<String> listOfColors,
    required String id,
    required List<String> listOfImages,
    required bool isFavorites,
    required int price,
    required double rating,
    required DeviceDetails device,
  }) = _DetailsModel;
}

@freezed
class DeviceDetails with _$DeviceDetails {
  const factory DeviceDetails({
      required String cpu,
      required String camera,
      required String sd,
      required String ram,
      required String name,

  }) = _DeviceDetails;
}