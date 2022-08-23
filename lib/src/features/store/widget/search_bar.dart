import 'package:flutter/material.dart';

import '../../../core/generated/resources/fonts.gen.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: const <Widget>[
          Expanded(child: _SearchBar()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: _QRCodeButton(),
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 8.0),
              child: Icon(
                Icons.search_outlined,
                color: theme.colorScheme.secondary,
              ),
            ),
            const Text(
              'Search',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: FontFamily.markPro,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QRCodeButton extends StatelessWidget {
  const _QRCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(120.0),
      child: Material(
        color: Theme.of(context).colorScheme.secondary,
        child: IconButton(
          tooltip: 'Scan QR code',
          icon: Icon(
            Icons.qr_code_outlined,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
