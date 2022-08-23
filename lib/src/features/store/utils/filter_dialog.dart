import 'package:flutter/material.dart';

import '../widget/filter_dialog.dart';

Future<T?> openFilterDialog<T>(BuildContext context) async {
  return await showRoundedModalSheet<T>(
    context: context,
    title: 'Filter options',
    child: const FilterDialogUI(),
  );
}
