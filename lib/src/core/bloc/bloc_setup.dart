import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'platform/app_observer_io.dart'
    if (dart.library.html) 'platform/app_observer_web.dart';

/// Sets BLoC observer and transformer for app.
///
/// Observer will be different for web or io platforms
void setUpBLoC() {
  Bloc.observer = getObserver();
  // event will be processed one at time
  Bloc.transformer = sequential<Object?>();
}
