import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/generated/localization/l10n.dart';
import '../../../core/generated/resources/fonts.gen.dart';
import '../model/store_items.dart';
import 'store_view.dart';

/// BestSeller section design. Returns a RenderBox, not sliver.
class BestSellerSection extends StatelessWidget {
  const BestSellerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //12
    return const Padding(
      padding: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 12.0),
      child: _BestSalesHeader(),
    );
  }
}

/// Header for BestSales section.
///
/// Design:
///
/// ```
/// Best sales        see more
/// ```
class _BestSalesHeader extends StatelessWidget {
  const _BestSalesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).bestSales,
          style: Theme.of(context).textTheme.headline1,
        ),
        const Spacer(),
        TextButton(
          // ignore: no-empty-block
          onPressed: () {
            // open categories list here
          },
          child: Text(S.of(context).seeMore),
        ),
      ],
    );
  }
}

/// Sliver grid of devices. Uses [MainStore] from [context].
class BestSalesGridView extends StatefulWidget {
  const BestSalesGridView({Key? key}) : super(key: key);

  @override
  State<BestSalesGridView> createState() => _BestSalesGridViewState();
}

class _BestSalesGridViewState extends State<BestSalesGridView> {
  late List<BestSeller> _bestSeller;

  @override
  void initState() {
    super.initState();
    _bestSeller = MainStore.of(context).storeItems.bestSeller;
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return _BestSalesGridItem(
              item: _bestSeller[index],
            );
          },
          childCount: _bestSeller.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 14.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 245,
        ),
      ),
    );
  }
}

/// Displays info about one item with given [BestSeller] model.
///
/// Design:
/// ```
///  |----------------------|
///  |       [device]       |
///  |        [photo]       |
///  | price oldPrice       |
///  |                      |
///  | Device Name          |
///  |                      |
///  |----------------------|
/// ```
class _BestSalesGridItem extends StatelessWidget {
  const _BestSalesGridItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  /// Information for one item in grid.
  final BestSeller item;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10.0),
          onTap: () => context.navigateNamedTo('/details'),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(21.0, 8.0, 8.0, 8.0),
            child: Stack(
              children: const [
                Align(
                  alignment: Alignment.topRight,
                  child: _FavoriteIcon(),
                ),
                _DeviceInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Returns current value of [item].
  static BestSeller of(BuildContext context) {
    assert(
      context.findAncestorWidgetOfExactType<_BestSalesGridItem>() != null,
      'No _BestSalesGridItem in context found',
    );

    return context.findAncestorWidgetOfExactType<_BestSalesGridItem>()!.item;
  }
}

/// Shows device image, prices and title in a column.
class _DeviceInfo extends StatelessWidget {
  const _DeviceInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = _BestSalesGridItem.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 160,
          width: double.infinity,
          child: Ink.image(
            image: NetworkImage(item.picture),
          ),
        ),
        const _DevicePrices(),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            item.title,
            style: const TextStyle(
              fontFamily: FontFamily.markPro,
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

/// Shows price with discount and without in a row.
class _DevicePrices extends StatelessWidget {
  const _DevicePrices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = _BestSalesGridItem.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '\$${item.priceWithoutDiscount}',
          style: const TextStyle(
            fontFamily: FontFamily.markPro,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 7),
        Text(
          '\$${item.discountPrice}',
          style: const TextStyle(
            decoration: TextDecoration.lineThrough,
            fontFamily: FontFamily.markPro,
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFFCCCCCC),
          ),
        ),
      ],
    );
  }
}

/// Icon for indicates whether item has been added to favorites or not.
class _FavoriteIcon extends StatelessWidget {
  const _FavoriteIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = _BestSalesGridItem.of(context);

    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(120),
      elevation: 4,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          item.isFavorites ?? false
              ? Icons.favorite_outlined
              : Icons.favorite_border_outlined,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
