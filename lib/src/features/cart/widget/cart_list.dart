import 'package:flutter/material.dart';

import '../../../core/generated/localization/l10n.dart';
import '../../../core/generated/resources/fonts.gen.dart';
import '../model/cart_content.dart';
import 'cart_view.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

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
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: CartDataStore.of(context).cartItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 46.0),
                    child: _CartListItem(
                      item: CartDataStore.of(context).cartItems[index],
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                color: Colors.white.withOpacity(0.6),
                thickness: 1,
              ),
            ),
            Row(
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
            ),
            Row(
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                color: Colors.white.withOpacity(0.6),
                thickness: 1,
              ),
            ),
            SizedBox(
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
            ),
          ],
        ),
      ),
    );
  }
}

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
        SizedBox(
          width: 180,
          child: Column(
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
          ),
        ),
        const Spacer(),
        DecoratedBox(
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
        ),
        const Icon(
          Icons.delete_outlined,
          color: Color(0xFF36364D),
        ),
      ],
    );
  }
}
