import 'package:get_it/get_it.dart';

import '../../features_clean/cart/data/datasource/cart_value_from_server.dart';
import '../../features_clean/cart/data/repository/cart_repository.dart';
import '../../features_clean/cart/domain/usecases/get_cart.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<CartValueFromServer>(CartValueFromServer());
  sl.registerSingleton<GetCartFromServer>(GetCartFromServer());
  sl.registerSingleton<CommerceCartRepository>(CommerceCartRepository());
}
