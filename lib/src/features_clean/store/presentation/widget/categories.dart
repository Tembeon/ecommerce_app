import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/generated/localization/l10n.dart';
import '../../../../core/generated/resources/fonts.gen.dart';
import '../bloc/categories/categories_bloc.dart';

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
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, bottom: 12.0),
          child: Row(
            children: [
              Text(
                S.of(context).selectCategory,
                style: theme.textTheme.headline1,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  // open categories list here
                },
                child: Text(S.of(context).viewAll),
              ),
            ],
          ),
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
class _CategoriesList extends StatelessWidget {
  const _CategoriesList({Key? key}) : super(key: key);

  // dummy list with categories
  final List<String> _items = const <String>[
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: _items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: _CategoryItem(
                    key: ValueKey('cat_item_$index'),
                    itemId: index,
                    label: _items[index],
                    isSelected: selected == index,
                    iconData: Icons.add_outlined,
                  ),
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
    return Column(
      children: [
        _CategoryItemRoundedIcon(isSelected: isSelected),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontFamily: FontFamily.markPro,
            fontWeight: FontWeight.w500,
            fontSize: 12.0,
            color: isSelected ? const Color(0xFFFF6E4E) : Colors.black,
          ),
        ),
      ],
    );
  }

  static _CategoryItem of(BuildContext context) {
    assert(
      context.findAncestorWidgetOfExactType<_CategoryItem>() != null,
      'No _CategoryItem founded in context',
    );

    return context.findAncestorWidgetOfExactType<_CategoryItem>()!;
  }
}

/// Icon in a white circle.
class _CategoryItemRoundedIcon extends StatelessWidget {
  const _CategoryItemRoundedIcon({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    var item = _CategoryItem.of(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(120),
      child: Material(
        child: Ink(
          width: 70,
          height: 70,
          color: isSelected ? const Color(0xFFFF6E4E) : Colors.white,
          child: InkWell(
            onTap: () => context
                .read<CategoriesBloc>()
                .add(CategoriesEvent.selectItem(item.itemId)),
            child: Align(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  item.iconData,
                  color: item.isSelected ? Colors.white : Colors.black,
                  size: 34.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
