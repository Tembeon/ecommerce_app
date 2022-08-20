import 'dart:async';

import 'package:l/l.dart';
import 'package:stack_trace/stack_trace.dart';

import 'runner_stub.dart'
    if (dart.library.io) 'runner_io.dart'
    if (dart.library.html) 'runner_web.dart' as runner;
import 'src/core/bloc/bloc_setup.dart';

void main() {
  runZonedGuarded(
    () async {
      setUpBLoC(); // sets observer and transformer

      await runner.run();
    },
    (error, stack) {
      // catch any errors not related to Flutter
      l.e(Trace.format(stack));
    },
  );
}
