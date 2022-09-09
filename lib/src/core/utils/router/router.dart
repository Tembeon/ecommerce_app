import 'package:auto_route/annotations.dart';

import '../../../features/cart/presentation/widget/cart_screen.dart';
import '../../../features/item_details/presentation/widget/item_details_screen.dart';
import '../../../features/navigation/presentation/widget/navigation_screen.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      initial: true,
      page: NavigationScreen,
    ),
    AutoRoute(
      path: '/details',
      page: ItemDetailsScreen,
    ),
    AutoRoute(
      path: '/cart',
      page: CartScreen,
    ),
  ],
)
class $RootRouter {}
