// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../features/cart/widget/cart_screen.dart' as _i3;
import '../../features/item_details/widget/item_details_screen.dart' as _i2;
import '../../features/navigation/widget/navigation_screen.dart' as _i1;

class RootRouter extends _i4.RootStackRouter {
  RootRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationScreen());
    },
    ItemDetailsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ItemDetailsScreen());
    },
    CartRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.CartScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(NavigationRoute.name, path: '/'),
        _i4.RouteConfig(ItemDetailsRoute.name, path: '/details'),
        _i4.RouteConfig(CartRoute.name, path: '/cart')
      ];
}

/// generated route for
/// [_i1.NavigationScreen]
class NavigationRoute extends _i4.PageRouteInfo<void> {
  const NavigationRoute() : super(NavigationRoute.name, path: '/');

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i2.ItemDetailsScreen]
class ItemDetailsRoute extends _i4.PageRouteInfo<void> {
  const ItemDetailsRoute() : super(ItemDetailsRoute.name, path: '/details');

  static const String name = 'ItemDetailsRoute';
}

/// generated route for
/// [_i3.CartScreen]
class CartRoute extends _i4.PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: '/cart');

  static const String name = 'CartRoute';
}
