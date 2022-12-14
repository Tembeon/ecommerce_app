import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/l.dart';

BlocObserver getObserver() => AppObserverWeb();

class AppObserverWeb extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // you can add more logging related to web issues, e.x. to sentry
    l.e(error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    l.v(transition);
    super.onTransition(bloc, transition);
  }
}
