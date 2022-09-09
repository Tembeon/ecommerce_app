import '../../../../core/utils/service_locator.dart';
import '../../data/repository/store_repository.dart';
import '../models/store_items/store_items.dart';

class GetStoreItems {
  Future<StoreItems> getStoreItems() {
    return sl<EcommerceApiRepository>().getStoreItems();
  }
}
