import 'package:flutter/material.dart';
import 'package:intl/intl_standalone.dart';

import 'src/core/utils/service_locator.dart';
import 'src/core/widget/app.dart';

/// App running on IO device (mobile)
Future<void> run() async {
  // find system locale based on device locale
  await findSystemLocale();
  setupServiceLocator();

  return runApp(const EcommerceApp());
}
