import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/generated/localization/l10n.dart';
import '../../../../core/generated/resources/fonts.gen.dart';

/// Creates app bar with back and shop buttons.
class ToolBar extends StatelessWidget {
  const ToolBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _BackButton(),
            Spacer(),
            _ToolBarText(),
            Spacer(),
            _OpenCartButton(),
          ],
        ),
      ),
    );
  }
}

/// A text in toolbar.
class _ToolBarText extends StatelessWidget {
  const _ToolBarText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).productDetails,
      style: const TextStyle(
        fontFamily: FontFamily.markPro,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      ),
      textAlign: TextAlign.center,
    );
  }
}

/// Button for navigating to cart.
class _OpenCartButton extends StatelessWidget {
  const _OpenCartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).colorScheme.primary,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () => context.navigateNamedTo('/cart'),
        child: SizedBox.square(
          dimension: 46,
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}

/// Button for back navigation.
class _BackButton extends StatelessWidget {
  const _BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).colorScheme.primary,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () => context.navigateBack(),
        child: SizedBox.square(
          dimension: 46,
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
