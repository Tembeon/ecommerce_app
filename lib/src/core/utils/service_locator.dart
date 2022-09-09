import 'package:get_it/get_it.dart';

import '../../features/cart/data/datasource/cart_value_from_server.dart';
import '../../features/cart/data/repository/cart_repository.dart';
import '../../features/cart/domain/usecases/get_cart.dart';
import '../../features/item_details/data/datasource/dto_get_item_details.dart';
import '../../features/item_details/data/repository/item_details_repository.dart';
import '../../features/item_details/domain/usecases/get_item_details_from_server.dart';
import '../../features/store/data/datasource/get_store_from_server.dart';
import '../../features/store/data/repository/store_repository.dart';
import '../../features/store/domain/usecases/get_store_items.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  _setupCore();
  _setupFeatures();
}

// Utils, Network
void _setupCore() {
// You can here add Dio or other HttpClient
}

// Repos, DTO and use-cases for features
void _setupFeatures() {
  // Start of cart screen related
  sl.registerSingleton<CartValueFromServer>(CartValueFromServer());
  sl.registerSingleton<GetCartFromServer>(GetCartFromServer());
  sl.registerSingleton<CommerceCartRepository>(CommerceCartRepository());
  // End of cart screen.
  //
  // Start of store screen related
  sl.registerSingleton<DtoGetStoreFromServer>(DtoGetStoreFromServer());
  sl.registerSingleton<GetStoreItems>(GetStoreItems());
  sl.registerSingleton<EcommerceApiRepository>(EcommerceApiRepository());
  // End of cart screen.
  //
  // Start of item details section
  sl.registerSingleton<DtoGetItemDetailsFromServer>(DtoGetItemDetailsFromServer());
  sl.registerSingleton<GetItemDetailsFromServer>(GetItemDetailsFromServer());
  sl.registerSingleton<ItemDetailsRepository>(ItemDetailsRepository());
  // End of item details
}
