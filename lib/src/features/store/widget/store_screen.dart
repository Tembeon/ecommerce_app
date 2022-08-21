import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/store_bloc.dart';
import 'store_view.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen>
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
      body: BlocConsumer<StoreBloc, StoreState>(
        builder: (context, state) {
          return state.when<Widget>(
            failure: (message) => FailureLoading(errorText: message),
            successful: () => const LoadingIndicator(),
            loading: () => const LoadingIndicator(),
            storeData: (data) => StoreView(storeItems: data),
          );
        },
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

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
