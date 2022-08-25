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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/item_details/widget/item_details_screen.dart' as _i2;
import '../../features/navigation/widget/navigation_screen.dart' as _i1;

class RootRouter extends _i3.RootStackRouter {
  RootRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationScreen());
    },
    ItemDetailsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ItemDetailsScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(NavigationRoute.name, path: '/'),
        _i3.RouteConfig(ItemDetailsRoute.name, path: '/details')
      ];
}

/// generated route for
/// [_i1.NavigationScreen]
class NavigationRoute extends _i3.PageRouteInfo<void> {
  const NavigationRoute() : super(NavigationRoute.name, path: '/');

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i2.ItemDetailsScreen]
class ItemDetailsRoute extends _i3.PageRouteInfo<void> {
  const ItemDetailsRoute() : super(ItemDetailsRoute.name, path: '/details');

  static const String name = 'ItemDetailsRoute';
}
