import 'package:flutter/material.dart';

import '../../../core/generated/resources/fonts.gen.dart';

class FilterDialogUI extends StatelessWidget {
  const FilterDialogUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/// Show modal sheet with rounded corners.
///
/// Use [child] with [title] if you want use styled layout.
///
/// Or use [customLayout] if you need something other.
Future<T?> showRoundedModalSheet<T>({
  required BuildContext context,
  String? title,
  bool isDismissible = true,
  bool enableDrag = true,
  Widget? child,
  Widget? customLayout,
}) async {
  return showModalBottomSheet<T>(
    context: context,
    isDismissible: isDismissible,
    isScrollControlled: true,
    enableDrag: enableDrag,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    builder: (context) =>
        customLayout ??
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(120.0),
                      child: Material(
                        color: Theme.of(context).colorScheme.secondary,
                        child: IconButton(
                          tooltip: 'Close',
                          icon: Icon(
                            Icons.close_outlined,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ),
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(120.0),
                      child: Material(
                        color: Theme.of(context).colorScheme.secondary,
                        child: ElevatedButton(
                          child: const Text(
                            'Done',
                            style: TextStyle(),
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
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
