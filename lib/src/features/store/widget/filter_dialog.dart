import 'package:flutter/material.dart';

import '../../../core/generated/localization/l10n.dart';
import '../../../core/generated/resources/fonts.gen.dart';
import '../model/filters.dart';

class FilterDialogUI extends StatelessWidget {
  const FilterDialogUI({
    Key? key,
    required this.filters,
  }) : super(key: key);

  final FiltersModel filters;

  @override
  Widget build(BuildContext context) {
    final decoration = InputDecoration(
      fillColor: Theme.of(context).colorScheme.primary,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );

    final textStyle = TextStyle(
      fontFamily: FontFamily.markPro,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.primary,
    );

    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 20),
            child: Text(S.of(context).brand, style: textStyle),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField<String>(
              borderRadius: BorderRadius.circular(5),
              decoration: decoration,
              isExpanded: true,
              value: filters.brands.first,
              style: textStyle.copyWith(fontWeight: FontWeight.w400),
              items: filters.brands
                  .map((brand) => DropdownMenuItem<String>(
                        value: brand,
                        child: Text(brand),
                      ))
                  .toList(),
              onChanged: (item) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(S.of(context).price, style: textStyle),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField<String>(
              borderRadius: BorderRadius.circular(5),
              decoration: decoration,
              isExpanded: true,
              value: filters.prices.first,
              style: textStyle.copyWith(fontWeight: FontWeight.w400),
              items: filters.prices
                  .map((price) => DropdownMenuItem<String>(
                        value: price,
                        child: Text(price),
                      ))
                  .toList(),
              onChanged: (item) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(S.of(context).size, style: textStyle),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField<String>(
              borderRadius: BorderRadius.circular(5),
              decoration: decoration,
              isExpanded: true,
              value: filters.sizes.first,
              style: textStyle.copyWith(fontWeight: FontWeight.w400),
              items: filters.sizes
                  .map((sizes) => DropdownMenuItem<String>(
                        value: sizes,
                        child: Text(sizes),
                      ))
                  .toList(),
              onChanged: (item) {},
            ),
          ),
        ],
      ),
    );
  }
}

/// Show modal sheet with rounded corners.
///
/// Use [child] with [title] if you want use styled layout.
///
/// Or use [customLayout] if you need something other.
Future<T?> showRoundedModalSheet<T>({
  required BuildContext context,

  /// A center title for dialog. Use title and child together.
  String? title,

  /// Set to [true] if you want to allow closing dialog via tapping outside dialog.
  /// Be default this parameter is [true].
  bool isDismissible = true,

  /// Set to [true] if you want to allow closing dialog via swipe.
  /// Be default this parameter is [true].
  bool enableDrag = true,

  /// A child widget for dialog. Use child and title together.
  Widget? child,

  /// Custom layout for dialog. Use it when you do not need paddings and
  /// centered text.
  Widget? customLayout,
}) async {
  return showModalBottomSheet<T>(
    context: context,
    isDismissible: isDismissible,
    isScrollControlled: true,
    enableDrag: enableDrag,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    builder: (context) =>
        customLayout ??
        Container(
          margin: const EdgeInsets.only(
            top: 24,
            left: 44,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.primary,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {},
                        child: SizedBox.square(
                          dimension: 35,
                          child: Icon(
                            Icons.close_outlined,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    title != null
                        ? Text(
                            title,
                            style: const TextStyle(
                              fontFamily: FontFamily.markPro,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                            textAlign: TextAlign.center,
                          )
                        : ErrorWidget('You need implement [title] if you want '
                            'use styled layout, or [customLayout] if you need'
                            ' your own layout'),
                    const Spacer(),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Theme.of(context).colorScheme.secondary,
                          ),
                          foregroundColor: MaterialStateProperty.all<Color>(
                            Theme.of(context).colorScheme.onSecondary,
                          ),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: Text(
                          S.of(context).done,
                          style: const TextStyle(
                            fontFamily: FontFamily.markPro,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ],
                ),
              ),
              child ??
                  ErrorWidget('You need implement [child] if you want '
                      'use styled layout, or [customLayout] if you need your '
                      'own layout'),
            ],
          ),
        ),
  );
}
