import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/generated/localization/l10n.dart';
import '../../../core/generated/resources/fonts.gen.dart';

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
            _ToolBarBackButton(),
            Spacer(),
            _ToolBarAddAddressText(),
            SizedBox(width: 12),
            _ToolBarAddressButton(),
          ],
        ),
      ),
    );
  }
}

class _ToolBarAddAddressText extends StatelessWidget {
  const _ToolBarAddAddressText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).addAddress,
      style: const TextStyle(
        fontFamily: FontFamily.markPro,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class _ToolBarAddressButton extends StatelessWidget {
  const _ToolBarAddressButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).colorScheme.secondary,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: SizedBox.square(
          dimension: 46,
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}

class _ToolBarBackButton extends StatelessWidget {
  const _ToolBarBackButton({
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
