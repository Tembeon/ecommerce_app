import 'package:flutter/material.dart';

import '../model/store_items.dart';
import 'best_seller.dart';
import 'categories.dart';
import 'hot_sales_store.dart';
import 'search_bar.dart';
import 'top_bar.dart';

class MainStore extends InheritedWidget {
  const MainStore({
    Key? key,
    required this.storeItems,
    required Widget child,
  }) : super(key: key, child: child);

  final StoreItems storeItems;

  static MainStore of(BuildContext context, {bool listen = false}) {
    if (listen) {
      final MainStore? result =
          context.dependOnInheritedWidgetOfExactType<MainStore>();
      assert(result != null, 'No MainStore found in context');

      return result!;
    } else {
      final inhWidget =
          context.getElementForInheritedWidgetOfExactType<MainStore>()?.widget;
      assert(inhWidget != null, 'No MainStore found in context');

      return inhWidget as MainStore;
    }
  }

  @override
  bool updateShouldNotify(MainStore oldWidget) =>
      oldWidget.storeItems != storeItems;
}

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
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: const <Widget>[
            CategoriesSection(),
            SizedBox(height: 36.0),
            SearchBar(),
            SizedBox(
              height: 24.0,
            ),
            HotSalesSection(),
            BestSellerSection(),
          ],
        ),
      ),
    );
  }
}
