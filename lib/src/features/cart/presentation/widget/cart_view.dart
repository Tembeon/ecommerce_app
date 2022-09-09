import 'package:flutter/material.dart';

import '../../../../core/generated/localization/l10n.dart';
import '../../../../core/generated/resources/fonts.gen.dart';
import '../../domain/models/cart_content/cart_content.dart';
import 'cart_list.dart';
import 'top_bar.dart';

class CartDataStore extends InheritedWidget {
  const CartDataStore({
    Key? key,
    required Widget child,
    required this.cartContent,
  }) : super(key: key, child: child);

  final CartContent cartContent;

  static CartContent of(BuildContext context) {
    final CartDataStore? result =
        context.dependOnInheritedWidgetOfExactType<CartDataStore>();
    assert(result != null, 'No CartDataStore found in context');

    return result!.cartContent;
  }

  @override
  bool updateShouldNotify(CartDataStore oldWidget) => false;
}

class ShowingCart extends StatelessWidget {
  const ShowingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: ToolBar(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 42),
            sliver: SliverToBoxAdapter(
              child: Text(
                S.of(context).myCart,
                style: const TextStyle(
                  fontFamily: FontFamily.markPro,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SliverFillRemaining(child: CartView()),
        ],
      ),
    );
  }
}
