import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../core/generated/localization/l10n.dart';
import '../../../core/generated/resources/fonts.gen.dart';
import '../model/details.dart';
import '../utils/hex_extension.dart';

/// Used to store current active [DetailsModel].
class ActiveInfoStore extends InheritedWidget {
  const ActiveInfoStore({
    Key? key,
    required Widget child,
    required this.detailsModel,
  }) : super(key: key, child: child);

  /// Current active [DetailsModel].
  final DetailsModel detailsModel;

  static DetailsModel of(BuildContext context) {
    final ActiveInfoStore? result =
        context.dependOnInheritedWidgetOfExactType<ActiveInfoStore>();
    assert(result != null, 'No ActiveInfoStore found in context');

    return result!.detailsModel;
  }

  @override
  bool updateShouldNotify(ActiveInfoStore oldWidget) =>
      oldWidget.detailsModel != detailsModel;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'Current value: ',
              detailsModel.toString(),
            ),
          ),
      );
}

/// Bottom part with description of device. Uses [ActiveInfoStore].
class DeviceInfoSection extends StatelessWidget {
  const DeviceInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _DeviceTitle(),
            _TabView(),
            _SpecsSelector(),
          ],
        ),
      ),
    );
  }
}

// Device title and rating bar
class _DeviceTitle extends StatelessWidget {
  const _DeviceTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = ActiveInfoStore.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              item.title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: FontFamily.markPro,
                fontSize: 24.0,
              ),
            ),
            const Spacer(),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: item.isFavorites
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.primary,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: SizedBox.square(
                  dimension: 46,
                  child: Icon(
                    item.isFavorites
                        ? Icons.favorite_outlined
                        : Icons.favorite_border_outlined,
                    color: item.isFavorites
                        ? Theme.of(context).colorScheme.onSecondary
                        : Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
        RatingBar.builder(
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Color(0xFFFFB800),
          ),
          initialRating: item.rating,
          onRatingUpdate: (_) {},
          ignoreGestures: true,
          allowHalfRating: true,
          itemSize: 28,
        ),
      ],
    );
  }
}

// tabs and tab's content
class _TabView extends StatelessWidget {
  const _TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: TabBar(
              indicatorColor: Theme.of(context).colorScheme.secondary,
              labelColor: Theme.of(context).colorScheme.primary,
              labelStyle: const TextStyle(
                fontSize: 18,
                fontFamily: FontFamily.markPro,
                fontWeight: FontWeight.w700,
              ),
              tabs: <Tab>[
                Tab(text: S.of(context).shop),
                Tab(text: S.of(context).details),
                Tab(text: S.of(context).features),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Column(
                  children: const [
                    _DeviceSpecs(),
                  ],
                ),
                Column(
                  children: [
                    Expanded(child: Text(S.of(context).details)),
                  ],
                ),
                Column(
                  children: [
                    Expanded(child: Text(S.of(context).features)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// cpu, cam, ram and disk info
class _DeviceSpecs extends StatelessWidget {
  const _DeviceSpecs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: SizedBox(
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 12.0,
          children: [
            _DeviceSpecItem(
              iconData: Icons.memory_outlined,
              label: ActiveInfoStore.of(context).cpu,
            ),
            _DeviceSpecItem(
              iconData: Icons.camera_alt_outlined,
              label: ActiveInfoStore.of(context).camera,
            ),
            _DeviceSpecItem(
              iconData: Icons.memory_outlined,
              label: ActiveInfoStore.of(context).ssd,
            ),
            _DeviceSpecItem(
              iconData: Icons.storage_outlined,
              label: ActiveInfoStore.of(context).sd,
            ),
          ],
        ),
      ),
    );
  }
}

class _DeviceSpecItem extends StatelessWidget {
  const _DeviceSpecItem({
    Key? key,
    required this.iconData,
    required this.label,
  }) : super(key: key);

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 32,
          color: const Color(0xFFB7B7B7),
        ),
        Text(
          label,
          style: const TextStyle(
            fontFamily: FontFamily.markPro,
            fontSize: 11,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class _SpecsSelector extends StatefulWidget {
  const _SpecsSelector({Key? key}) : super(key: key);

  @override
  State<_SpecsSelector> createState() => _SpecsSelectorState();
}

class _SpecsSelectorState extends State<_SpecsSelector> {
  @override
  Widget build(BuildContext context) {
    var item = ActiveInfoStore.of(context);
    int selectedColor = 0;
    int selectedCapacity = 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
          child: Text(
            S.of(context).selectColor,
            style: const TextStyle(
              fontFamily: FontFamily.markPro,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Wrap(
          spacing: 8.0,
          children: item.color
              .map<Widget>(
                (color) => Material(
                  borderRadius: BorderRadius.circular(120),
                  color: color.fromHex(),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(120),
                    onTap: () {},
                    child: SizedBox.square(
                      dimension: 46,
                      child: selectedColor == item.color.indexOf(color)
                          ? const Icon(
                              Icons.check_outlined,
                              color: Colors.white,
                            )
                          : const SizedBox.shrink(),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
          child: Text(
            S.of(context).selectCapacity,
            style: const TextStyle(
              fontFamily: FontFamily.markPro,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Wrap(
          spacing: 8.0,
          children: item.capacity
              .map<Widget>(
                (capacity) => Material(
                  borderRadius: BorderRadius.circular(10),
                  color: selectedCapacity == item.capacity.indexOf(capacity)
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 10,
                      ),
                      child: Text('$capacity GB'),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).colorScheme.secondary,
              ),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            child: SizedBox(
              width: double.infinity,
              child: Wrap(
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.spaceAround,
                children: [
                  Text(
                    S.of(context).addToCart,
                    style: const TextStyle(
                      fontFamily: FontFamily.markPro,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '\$${item.price}',
                    style: const TextStyle(
                      fontFamily: FontFamily.markPro,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
