import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/service_locator.dart';
import '../../../../core/widget/failure_widget.dart';
import '../../../../core/widget/loading_indicator.dart';
import '../../domain/usecases/get_store_items.dart';
import '../bloc/filters/filter_options_bloc.dart';
import '../bloc/store/store_bloc.dart';
import 'store_view.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StoreBloc>(
          create: (_) => StoreBloc(sl<GetStoreItems>()),
        ),
        BlocProvider<FilterOptionsBloc>(
          create: (_) => FilterOptionsBloc(),
        ),
      ],
      child: const StoreScreenStates(),
    );
  }
}

class StoreScreenStates extends StatefulWidget {
  const StoreScreenStates({Key? key}) : super(key: key);

  @override
  State<StoreScreenStates> createState() => _StoreScreenStatesState();
}

class _StoreScreenStatesState extends State<StoreScreenStates>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    BlocProvider.of<StoreBloc>(context).add(const StoreEvent.loadNewData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: BlocBuilder<StoreBloc, StoreState>(
        builder: (context, state) {
          return state.when<Widget>(
            failure: (message) => FailureLoading(errorText: message),
            loading: () => const LoadingIndicator(),
            storeData: (data) => MainStore(
              storeItems: data,
              child: const StoreView(),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
