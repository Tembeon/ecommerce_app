import 'package:flutter/material.dart';
import 'package:intl/intl_browser.dart';

import 'src/core/widget/app.dart';

/// App running on web (html)
Future<void> run() async {
  // find system locale based on web window
  await findSystemLocale();

  return runApp(const EcommerceApp());
}
