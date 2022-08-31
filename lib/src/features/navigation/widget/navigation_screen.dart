import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cart/bloc/cart_bloc.dart';
import '../../cart/data/cart_repository.dart';
import '../bloc/navigation_bloc.dart';
import 'navigation.dart';
import 'navigation_page_storage.dart';

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
          create: (_) => CartBloc(CommerceCartRepository()),
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
