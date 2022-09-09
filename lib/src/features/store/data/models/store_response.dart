// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_response.freezed.dart';
part 'store_response.g.dart';

/// Contains raw store info from server.
@freezed
class StoreResponse with _$StoreResponse {
  const factory StoreResponse({
    @JsonKey(name: 'home_store') required List<HomeResponse> homeStore,
    @JsonKey(name: 'best_seller') required List<BestSellerResponse> bestSeller,
  }) = _StoreResponse;

  factory StoreResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreResponseFromJson(json);
}

/// Contains raw home store info from server.
@freezed
class HomeResponse with _$HomeResponse {
  const factory HomeResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'is_new') bool? isNew,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'subtitle') required String subtitle,
    @JsonKey(name: 'picture') required String picture,
    @JsonKey(name: 'is_buy') bool? isBuy,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

/// Contains raw best seller info from server.
@freezed
class BestSellerResponse with _$BestSellerResponse {
  const factory BestSellerResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'is_favorites') bool? isFavorites,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'price_without_discount') required int priceWithoutDiscount,
    @JsonKey(name: 'discount_price') required int discountPrice,
    @JsonKey(name: 'picture') required String picture,
  }) = _BestSeller;

  factory BestSellerResponse.fromJson(Map<String, dynamic> json) =>
      _$BestSellerResponseFromJson(json);
}
