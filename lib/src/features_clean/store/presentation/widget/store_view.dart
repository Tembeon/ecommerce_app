import 'package:flutter/material.dart';

import '../../domain/models/store_items/store_items.dart';
import 'best_seller.dart';
import 'categories.dart';
import 'hot_sales.dart';
import 'search_bar.dart';
import 'top_bar.dart';

/// Storing [StoreItems] in context.
///
/// You can get data via:
/// ```
/// MainStore.of(context).storeItems;
/// ```
class MainStore extends InheritedWidget {
  const MainStore({
    Key? key,
    required this.storeItems,
    required Widget child,
  }) : super(key: key, child: child);

  /// Storing actual store data.
  final StoreItems storeItems;

  /// Retrieve data via context.
  ///
  /// Set [listen] to [true] if you want to subscribe to widget updates.
  static MainStore of(BuildContext context, {bool listen = false}) {
    if (listen) {
      // subscribe given [context] to updates.
      final MainStore? result =
          context.dependOnInheritedWidgetOfExactType<MainStore>();
      assert(result != null, 'No MainStore found in context');

      return result!;
    } else {
      // just return actual value without subscription
      final inhWidget =
          context.getElementForInheritedWidgetOfExactType<MainStore>()?.widget;
      assert(inhWidget != null, 'No MainStore found in context');

      return inhWidget as MainStore;
    }
  }

  // notify about updates if [storeItems] has been changed.
  @override
  bool updateShouldNotify(MainStore oldWidget) =>
      oldWidget.storeItems != storeItems;
}

/// View with store UI. You should pass [MainStore] as parent in widget tree.
class StoreView extends StatefulWidget {
  const StoreView({
    Key? key,
  }) : super(key: key);

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: const <Widget>[
                CategoriesSection(),
                SizedBox(height: 36.0),
                SearchBar(),
                SizedBox(height: 24.0),
                HotSalesSection(),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          const SliverToBoxAdapter(child: BestSellerSection()),
          const BestSalesGridView(),
          // additional space from bottom for full visible grid items
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    );
  }
}
