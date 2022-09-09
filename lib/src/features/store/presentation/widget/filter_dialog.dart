import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/generated/localization/l10n.dart';
import '../../../../core/generated/resources/fonts.gen.dart';
import '../../domain/models/filters/filters.dart';

class FilterDialogUI extends StatelessWidget {
  const FilterDialogUI({
    Key? key,
    required this.filters,
  }) : super(key: key);

  final FiltersModel filters;

  @override
  Widget build(BuildContext context) {
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
          _FilterDropdownButton(
            textStyle: textStyle,
            items: filters.brands,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(S.of(context).price, style: textStyle),
          ),
          _FilterDropdownButton(
            textStyle: textStyle,
            items: filters.prices,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(S.of(context).size, style: textStyle),
          ),
          _FilterDropdownButton(
            textStyle: textStyle,
            items: filters.sizes,
          ),
        ],
      ),
    );
  }
}

/// Creates styled dropdown button with given [items].
class _FilterDropdownButton extends StatelessWidget {
  const _FilterDropdownButton({
    Key? key,
    required this.textStyle,
    required this.items,
  }) : super(key: key);

  final TextStyle textStyle;

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField<String>(
        borderRadius: BorderRadius.circular(5),
        decoration: InputDecoration(
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
        ),
        isExpanded: true,
        value: items.first,
        style: textStyle.copyWith(fontWeight: FontWeight.w400),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
        onChanged: (item) {},
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
        _FilterDialogStyledLayout(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: _FilterDialogTitle(title: title),
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

/// Add margin inside layout.
class _FilterDialogStyledLayout extends StatelessWidget {
  const _FilterDialogStyledLayout({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 24,
        left: 44,
        right: 20,
        bottom: 40,
      ),
      child: child,
    );
  }
}

/// Title, close and done buttons for dialog.
class _FilterDialogTitle extends StatelessWidget {
  const _FilterDialogTitle({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const _CloseButton(),
        const Spacer(),
        title != null
            ? Text(
                title!,
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
        const _DoneButton(),
      ],
    );
  }
}

/// Used for done action
class _DoneButton extends StatelessWidget {
  const _DoneButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

/// Used for closing dialog.
class _CloseButton extends StatelessWidget {
  const _CloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).colorScheme.primary,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: context.popRoute,
        child: SizedBox.square(
          dimension: 35,
          child: Icon(
            Icons.close_outlined,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
