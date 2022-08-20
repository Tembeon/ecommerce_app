import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/navigation_bloc.dart';
import 'navigation.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('A text'),
      ),
      bottomNavigationBar: BlocProvider(
        create: (_) => NavigationBloc(0),
        child: const RoundedBottomNavigation(),
      ),
    );
  }
}
