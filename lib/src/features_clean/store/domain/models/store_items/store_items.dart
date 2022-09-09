import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_items.freezed.dart';

@freezed
class StoreItems with _$StoreItems {
  const factory StoreItems({
    required List<HomeStore> homeStore,
    required List<BestSeller> bestSeller,
  }) = _StoreItems;
}

@freezed
class HomeStore with _$HomeStore {
  const factory HomeStore({
    required int id,
    required bool isNew,
    required String title,
    required String subtitle,
    required String picture,
    required bool isBuy,
  }) = _HomeStore;
}

@freezed
class BestSeller with _$BestSeller {
  const factory BestSeller({
    required int id,
    required bool isFavorites,
    required String title,
    required int priceWithoutDiscount,
    required int discountPrice,
    required String picture,
  }) = _BestSeller;
}
