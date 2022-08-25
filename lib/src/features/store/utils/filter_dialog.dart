import 'package:flutter/material.dart';

import '../model/filters.dart';
import '../widget/filter_dialog.dart';

Future<T?> openFilterDialog<T>(BuildContext context) async {
  const FiltersModel filters = FiltersModel(
    brands: <String>['Samsung', 'Apple', 'Xiaomi'],
    prices: <String>['\$300 - \$500', '\$500 - \$1000', '\$1000 - \$1500'],
    sizes: <String>['4.5 to 5.5 inches', '5.5 to 6.5 inches'],
  );

  return await showRoundedModalSheet<T>(
    context: context,
    title: 'Filter options',
    child: const FilterDialogUI(filters: filters),
  );
}
