import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/item_details_bloc.dart';
import '../data/details_repository.dart';
import 'item_details_view.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemDetailsBloc>(
      create: (context) => ItemDetailsBloc(DetailsRepository()),
      child: const _ItemDetailsStates(),
    );
  }
}

class _ItemDetailsStates extends StatefulWidget {
  const _ItemDetailsStates({
    Key? key,
  }) : super(key: key);

  @override
  State<_ItemDetailsStates> createState() => _ItemDetailsStatesState();
}

class _ItemDetailsStatesState extends State<_ItemDetailsStates> {
  @override
  void initState() {
    super.initState();

    context.read<ItemDetailsBloc>().add(const ItemDetailsEvent.loadData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemDetailsBloc, ItemDetailsState>(
      builder: (context, state) {
        return Scaffold(
          body: state.when<Widget>(
            loading: () => const LoadingIndicator(),
            failure: (message) => FailureLoading(errorText: message),
            showDetailsWith: (details) => DetailsWithCarousel(models: details),
          ),
        );
      },
    );
  }
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
