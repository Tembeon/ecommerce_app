import 'package:flutter/material.dart';

class PlaceholderPage extends StatelessWidget {
  const PlaceholderPage({
    Key? key,
    required String text,
  })  : _placeholderText = text,
        super(key: key);

  final String _placeholderText;

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Center(child: Text(_placeholderText)),
    );
  }
}
