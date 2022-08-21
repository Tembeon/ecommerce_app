import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../store/bloc/store_bloc.dart';
import '../../store/data/store_repository.dart';
import '../../store/widget/store_screen.dart';
import '../bloc/navigation_bloc.dart';
import 'placeholder_page.dart';

class NavigationPageStorage extends StatelessWidget {
  const NavigationPageStorage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using PageView for keeping alive screen's states
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: state.getController,
          children: [
            BlocProvider<StoreBloc>(
              create: (_) => StoreBloc(EcommerceApiRepository()),
              child: const StoreScreen(),
            ),
            const PlaceholderPage(text: 'Cart'),
            const PlaceholderPage(text: 'Favorites'),
            const PlaceholderPage(text: 'Profile'),
          ],
        );
      },
    );
  }
}
