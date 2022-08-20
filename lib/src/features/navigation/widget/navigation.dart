import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../bloc/navigation_bloc.dart';

class RoundedBottomNavigation extends StatelessWidget {
  const RoundedBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        final theme = Theme.of(context);

        return DecoratedBox(
          decoration: BoxDecoration(
            // set background color
            color: theme.colorScheme.primary,
            // I add top radius only because many of phones has already
            // rounded corners. We can get device rounds and use it below
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: SalomonBottomBar(
            itemPadding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            selectedItemColor: theme.colorScheme.onPrimary,
            unselectedItemColor: theme.colorScheme.onSurface,
            currentIndex: state.getIndex,
            onTap: (index) => context
                .read<NavigationBloc>()
                .add(NavigationEvent.setIndex(index)),
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.fiber_manual_record_rounded),
                title: const Text('Explorer'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.shopping_bag_outlined),
                title: const Text('Cart'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.favorite_border_outlined),
                title: const Text('Favorites'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.person_outline),
                title: const Text('Profile'),
              ),
            ],
          ),
        );
      },
    );
  }
}
