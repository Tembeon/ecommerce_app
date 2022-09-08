import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cart/presentation/bloc/cart_bloc.dart';
import '../bloc/navigation_bloc.dart';
import 'navigation.dart';
import 'navigation_page_storage.dart';

/// Creates screen with rounded bottom navigation and page storage.
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => NavigationBloc(0, PageController()),
        ),
        BlocProvider(
          create: (_) => CartBloc(),
        ),
      ],
      child: const Scaffold(
        extendBody: true,
        body: NavigationPageStorage(),
        bottomNavigationBar: RoundedBottomNavigation(),
      ),
    );
  }
}
