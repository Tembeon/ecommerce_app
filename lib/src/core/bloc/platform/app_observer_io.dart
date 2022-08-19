import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/l.dart';

/// Returns IO observer
BlocObserver getObserver() => AppObserverIO();

/// Observer for IO platform (mobile, desktop)
class AppObserverIO extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // you can add more logging here, e.x. to sentry or crashlytics
    l.e(error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    l.v(transition);
    super.onTransition(bloc, transition);
  }
}
