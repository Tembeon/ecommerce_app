import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../../core/generated/localization/l10n.dart';
import '../../../cart/presentation/bloc/cart_bloc.dart';
import '../bloc/navigation_bloc.dart';

/// Creates bottom navigation with rounded angles.
/// Uses CartBloc and NavigationBloc.
class RoundedBottomNavigation extends StatefulWidget {
  const RoundedBottomNavigation({Key? key}) : super(key: key);

  @override
  State<RoundedBottomNavigation> createState() =>
      _RoundedBottomNavigationState();
}

class _RoundedBottomNavigationState extends State<RoundedBottomNavigation> {
  @override
  void initState() {
    super.initState();
    // load data to show badge count
    context.read<CartBloc>().add(const CartEvent.loadData());
  }

  @override
  Widget build(BuildContext context) {
    int? badgeCount;

    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        final theme = Theme.of(context);
        context.watch<CartBloc>().state.when(
              loading: () => badgeCount = null,
              failure: (_) => badgeCount = null,
              showingCartWith: (data) => badgeCount = data.cartItems.length,
            );

        return _RoundedDecoration(
          child: SalomonBottomBar(
            itemPadding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ),
            selectedColorOpacity: 0.0,
            selectedItemColor: theme.colorScheme.onPrimary,
            unselectedItemColor: theme.colorScheme.onSurface,
            currentIndex: state.getIndex,
            onTap: (index) {
              if (index == 1) return context.navigateNamedTo('/cart');

              context
                  .read<NavigationBloc>()
                  .add(NavigationEvent.setIndex(index));
            },
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.fiber_manual_record_rounded),
                title: Text(S.of(context).explorer),
              ),
              SalomonBottomBarItem(
                icon: Badge(
                  showBadge: badgeCount != null,
                  toAnimate: false,
                  badgeContent: Text('$badgeCount'),
                  child: const Icon(Icons.shopping_bag_outlined),
                ),
                title: Text(S.of(context).cart),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.favorite_border_outlined),
                title: Text(S.of(context).favorites),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.person_outline),
                title: Text(S.of(context).profile),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Creates rounded decoration for a child.
class _RoundedDecoration extends StatelessWidget {
  const _RoundedDecoration({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
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
      child: child,
    );
  }
}
