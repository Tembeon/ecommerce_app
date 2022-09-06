import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widget/failure_widget.dart';
import '../../../core/widget/loading_indicator.dart';
import '../bloc/cart_bloc.dart';
import '../data/cart_repository.dart';
import 'cart_view.dart';

/// Creates cart screen with BlocProvider<CartBloc> as parent.
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (_) => CartBloc(CommerceCartRepository()),
      child: const _CartScreenStates(),
    );
  }
}

/// Cart screen that depends on the CartBloc state.
class _CartScreenStates extends StatefulWidget {
  const _CartScreenStates({Key? key}) : super(key: key);

  @override
  State<_CartScreenStates> createState() => _CartScreenStatesState();
}

class _CartScreenStatesState extends State<_CartScreenStates> {
  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(const CartEvent.loadData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      return Scaffold(
        body: state.when<Widget>(
          loading: () => const LoadingIndicator(),
          failure: (message) => FailureLoading(errorText: message),
          showingCartWith: (cartData) => CartDataStore(
            cartContent: cartData,
            child: const ShowingCart(),
          ),
        ),
      );
    });
  }
}
