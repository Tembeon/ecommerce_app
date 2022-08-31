import 'package:flutter/material.dart';

class FailureLoading extends StatelessWidget {
  const FailureLoading({
    Key? key,
    required this.errorText,
  }) : super(key: key);

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorText),
    );
  }
}
