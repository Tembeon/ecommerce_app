import 'package:flutter/material.dart';

import '../model/store_items.dart';
import 'best_seller.dart';
import 'categories.dart';
import 'hot_sales_store.dart';
import 'search_bar.dart';
import 'top_bar.dart';

class StoreView extends StatefulWidget {
  const StoreView({
    Key? key,
    required this.storeItems,
  }) : super(key: key);
  final StoreItems storeItems;

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
            HotSalesSection(),
            BestSellerSection(),
          ],
        ),
      ),
    );

  }

  static StoreItems of(BuildContext context) {
    assert(context.findAncestorStateOfType<_StoreViewState>() != null,
        'StoreView is not mounted');

    return context
        .findAncestorStateOfType<_StoreViewState>()!
        .widget
        .storeItems;
  }
}
