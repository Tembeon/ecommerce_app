import 'package:flutter/material.dart';

import '../../../core/generated/localization/l10n.dart';
import '../../../core/generated/resources/fonts.gen.dart';
import '../model/cart_content.dart';
import 'cart_view.dart';

/// Shows user's cart.
///
/// Design:
/// ```
///  (-----------------------------)
///  | [List of CartItem]          |
///  |                             |
///  | Delivery         free       |
///  | Total            $3300.0 us |
///  |                             |
///  | (       Checkout         )  |
///  -------------------------------
/// ```
class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 28),
        child: Column(
          children: [
            const SizedBox(
              height: 400,
              child: _CartListView(),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                color: Colors.white.withOpacity(0.6),
                thickness: 1,
              ),
            ),
            const _TotalPriceRow(),
            const _DeliveryPriceRow(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                color: Colors.white.withOpacity(0.6),
                thickness: 1,
              ),
            ),
            const _CheckoutButton(),
          ],
        ),
      ),
    );
  }
}

/// Full width elevated button
class _CheckoutButton extends StatelessWidget {
  const _CheckoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            Theme.of(context).colorScheme.onSecondary,
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            Theme.of(context).colorScheme.secondary,
          ),
        ),
        onPressed: () {},
        child: Text(S.of(context).checkout),
      ),
    );
  }
}

/// Shows delivery price in a row:
/// ```
/// Delivery:          Free
/// ```
class _DeliveryPriceRow extends StatelessWidget {
  const _DeliveryPriceRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).delivery,
          style: const TextStyle(
            fontFamily: FontFamily.markPro,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        Text(
          CartDataStore.of(context).delivery,
          style: const TextStyle(
            fontFamily: FontFamily.markPro,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

/// Shows total price in a row:
/// ```
/// Total          $3300.0 us
/// ```
class _TotalPriceRow extends StatelessWidget {
  const _TotalPriceRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).total,
          style: const TextStyle(
            fontFamily: FontFamily.markPro,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        Text(
          S.of(context).totalPay(CartDataStore.of(context).total),
          style: const TextStyle(
            fontFamily: FontFamily.markPro,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

/// ListView.builder that displays a list of [_CartListItem].
class _CartListView extends StatelessWidget {
  const _CartListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CartDataStore.of(context).cartItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 46.0),
          child: _CartListItem(
            item: CartDataStore.of(context).cartItems[index],
          ),
        );
      },
    );
  }
}

/// One item in a cart with design:
/// ```
/// -----------------------------
/// | Device | Title   -       |
/// | Image  |         2(trash)|
/// |        | Price   +       |
/// ----------------------------
/// ```
///
/// You can get item, stored in this widget via [_CartListItem.of(context)]
class _CartListItem extends StatelessWidget {
  const _CartListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(item.images, width: 80),
        ),
        const SizedBox(width: 8),
        const SizedBox(
          width: 180,
          child: _CartListItemTitleAndPriceColumn(),
        ),
        const Spacer(),
        const _CartListItemCounter(),
        const Icon(
          Icons.delete_outlined,
          color: Color(0xFF36364D),
        ),
      ],
    );
  }

  /// Returns CartItem for this item.
  static CartItem of(BuildContext context) {
    assert(
      context.findAncestorWidgetOfExactType<_CartListItem>() != null,
      'No _CartListItem in context found',
    );

    return context.findAncestorWidgetOfExactType<_CartListItem>()!.item;
  }
}

/// Counter of cart item.
///
/// Design:
/// ```
///  ( - )
///  | 2 |
///  ( + )
/// ```
class _CartListItemCounter extends StatelessWidget {
  const _CartListItemCounter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF282843),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            Icon(
              Icons.remove_outlined,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            Text(
              '2',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 20,
                fontFamily: FontFamily.markPro,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.add_outlined,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ],
        ),
      ),
    );
  }
}

/// Shows cart title and price in a column.
///
/// Design:
/// ```
/// iPhone 13
/// $1800.0
/// ```
class _CartListItemTitleAndPriceColumn extends StatelessWidget {
  const _CartListItemTitleAndPriceColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = _CartListItem.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontFamily: FontFamily.markPro,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '\$${item.price}',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontFamily: FontFamily.markPro,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
