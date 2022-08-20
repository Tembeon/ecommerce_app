import 'package:auto_route/annotations.dart';

import '../../features/navigation/widget/navigation_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      initial: true,
      page: NavigationScreen,
    ),
  ],
)
class $RootRouter {}
