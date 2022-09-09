import '../models/store_items/store_items.dart';

abstract class IStoreRepository {
  /// Returns items for main store
  Future<StoreItems> getStoreItems();
}
