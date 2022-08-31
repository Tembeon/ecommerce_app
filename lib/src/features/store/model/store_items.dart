// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_items.freezed.dart';
part 'store_items.g.dart';

@freezed
class StoreItems with _$StoreItems {
  const factory StoreItems({
    @JsonKey(name: 'home_store') required List<HomeStore> homeStore,
    @JsonKey(name: 'best_seller') required List<BestSeller> bestSeller,
  }) = _StoreItems;

  factory StoreItems.fromJson(Map<String, dynamic> json) =>
      _$StoreItemsFromJson(json);
}

@freezed
class HomeStore with _$HomeStore {
  const factory HomeStore({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'is_new') bool? isNew,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'subtitle') required String subtitle,
    @JsonKey(name: 'picture') required String picture,
    @JsonKey(name: 'is_buy') bool? isBuy,
  }) = _HomeStore;

  factory HomeStore.fromJson(Map<String, dynamic> json) =>
      _$HomeStoreFromJson(json);
}

@freezed
class BestSeller with _$BestSeller {
  const factory BestSeller({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'is_favorites') bool? isFavorites,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'price_without_discount') required int priceWithoutDiscount,
    @JsonKey(name: 'discount_price') required int discountPrice,
    @JsonKey(name: 'picture') required String picture,
  }) = _BestSeller;

  factory BestSeller.fromJson(Map<String, dynamic> json) =>
      _$BestSellerFromJson(json);
}
