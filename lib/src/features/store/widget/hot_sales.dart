import 'package:flutter/material.dart';

import '../../../core/generated/resources/fonts.gen.dart';
import '../model/store_items.dart';
import 'store_view.dart';

/// Hot sales section.
///
/// Design:
///
/// ```
/// Hot sales       see more
/// CarouselView[HotSalesItem, HotSalesItem, HotSalesItem]
/// ```
class HotSalesSection extends StatelessWidget {
  const HotSalesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: const [
          _HotSalesHeader(),
          SizedBox(
            height: 12.0,
          ),
          _CarouselView(),
        ],
      ),
    );
  }
}

/// Header of HotSales section
///
/// Design:
/// ```
/// Hot sales       see more
/// ```
class _HotSalesHeader extends StatelessWidget {
  const _HotSalesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hot sales',
          style: Theme.of(context).textTheme.headline1,
        ),
        const Spacer(),
        TextButton(
          // ignore: no-empty-block
          onPressed: () {
            // open categories list here
          },
          child: const Text('see more'),
        ),
      ],
    );
  }
}

/// Carousel with list of hot sales.
///
/// Design:
///
/// ```
///
/// [HotSalesItem, HotSalesItem, HotSalesItem]
/// ```
class _CarouselView extends StatefulWidget {
  const _CarouselView({Key? key}) : super(key: key);

  @override
  State<_CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<_CarouselView> {
  late PageController _pageController;
  late List<HomeStore> items;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1.02);
    items = MainStore.of(context).storeItems.homeStore;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        pageSnapping: true,
        itemBuilder: (context, index) {
          return FractionallySizedBox(
              widthFactor: 1 / _pageController.viewportFraction,
              child: _HotSalesItem(homeStore: items[index]),);
        },
      ),
    );
  }
}

/// Item for list of HotSales.
///
/// Design:
/// ```
///  |--------------------------------------------|
///  |  ( new )                                   |
///  |  DeviceModel                  / background |
///  |  DeviceDescription                image/   |
///  |                                            |
///  |  [ buy now! ]                              |
///  |--------------------------------------------|
/// ```
class _HotSalesItem extends StatelessWidget {
  const _HotSalesItem({
    Key? key,
    required this.homeStore,
  }) : super(key: key);

  final HomeStore homeStore;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: _BigImageView(imageUrl: homeStore.picture),
          ),
          _ModelInfo(homeStore: homeStore),
        ],
      ),
    );
  }
}

/// Info about model.
///
/// Design:
///
/// ```
///  ( new )
///  DeviceModel
///  DeviceDescription
///
/// [buy now!]
/// ```
class _ModelInfo extends StatelessWidget {
  const _ModelInfo({
    Key? key,
    required this.homeStore,
  }) : super(key: key);

  final HomeStore homeStore;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: NewMark(
              shouldShow: homeStore.isNew ?? false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Text(
              homeStore.title,
              style: TextStyle(
                color: theme.colorScheme.onPrimary,
                fontSize: 25.0,
                fontFamily: FontFamily.markPro,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 26.0),
            child: Text(
              homeStore.subtitle,
              style: TextStyle(
                color: theme.colorScheme.onPrimary,
                fontSize: 12.0,
                fontFamily: FontFamily.markPro,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          if (homeStore.isBuy ?? false)
            ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text(
                'Buy now!',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// Label "New" on item.
///
/// Design:
/// ```
/// ( New )
/// ```
class NewMark extends StatelessWidget {
  const NewMark({
    Key? key,
    required this.shouldShow,
  }) : super(key: key);

  final bool shouldShow;

  @override
  Widget build(BuildContext context) {
    if (!shouldShow) return const SizedBox.square(dimension: 26.0);

    return ClipRRect(
      borderRadius: BorderRadius.circular(120.0),
      child: Material(
        color: Theme.of(context).colorScheme.secondary,
        child: SizedBox.square(
          dimension: 26,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Text(
                'New',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Background image with darken filter.
class _BigImageView extends StatelessWidget {
  const _BigImageView({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: NetworkImage(imageUrl),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4),
                BlendMode.dstATop,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
