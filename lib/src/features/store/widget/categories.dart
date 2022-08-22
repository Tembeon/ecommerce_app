import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/generated/resources/fonts.gen.dart';
import '../bloc/categories_bloc.dart';

/// Section with:
///
/// ```
/// Select category      view all
///
/// [CategoryItem, CategoryItem, CategoryItem]
/// ```
class CategoriesSection extends StatelessWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          children: [
            Text(
              'Select category',
              style: theme.textTheme.headline1,
            ),
            const Spacer(),
            TextButton(
              // ignore: no-empty-block
              onPressed: () {
                // open categories list here
              },
              child: const Text('view all'),
            ),
          ],
        ),
        BlocProvider(
          create: (context) => CategoriesBloc(0),
          child: const _CategoriesList(),
        ),
      ],
    );
  }
}

/// Builds a scrollable list of category items.
///
/// Design:
///
/// ```
/// [CategoryItem, CategoryItem, CategoryItem]
/// ```
class _CategoriesList extends StatefulWidget {
  const _CategoriesList({Key? key}) : super(key: key);

  @override
  State<_CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<_CategoriesList> {
  // dummy list with categories
  final List<String> items = [
    'Phones',
    'Computer',
    'Health',
    'Books',
    'Other',
    'Other',
    'Other',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (context, state) {
          return state.when<Widget>(
            selected: (selected) => ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return _CategoryItem(
                  key: ValueKey('cat_item_$index'),
                  itemId: index,
                  label: items[index],
                  isSelected: selected == index,
                  iconData: Icons.add_outlined,
                );
              },
            ),
          );
        },
      ),
    );
  }
}

/// One item for category list.
///
/// Design:
///
/// ```
/// ( Icon )
///   text
/// ```
class _CategoryItem extends StatelessWidget {
  const _CategoryItem({
    Key? key,
    required this.label,
    required this.iconData,
    required this.isSelected,
    required this.itemId,
  }) : super(key: key);

  /// Item name under icon.
  final String label;

  /// Centered icon in item.
  final IconData iconData;

  /// Indicates whether the item is selected.
  final bool isSelected;

  /// Item's index in a list.
  final int itemId;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              onTap: () => context.read<CategoriesBloc>().add(
                    CategoriesEvent.selectItem(itemId),
                  ),
              child: CustomPaint(
                painter: CirclePainter(
                  isSelected ? const Color(0xFFFF6E4E) : Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    iconData,
                    color: isSelected ? Colors.white : Colors.black,
                    size: 34.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            label,
            style: const TextStyle(
              fontFamily: FontFamily.markPro,
              fontWeight: FontWeight.w500,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}

/// Drawing a circle with given [color].
class CirclePainter extends CustomPainter {
  CirclePainter(Color color) : super() {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    _painter = paint;
  }

  late Paint _painter;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawOval(
      Rect.fromLTWH(0, 0, size.width, size.height),
      _painter,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
