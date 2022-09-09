import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/generated/localization/l10n.dart';
import '../../domain/models/filters/filters.dart';
import '../bloc/filters/filter_options_bloc.dart';
import 'filter_dialog.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: _BlocListenerForFilterDialog(
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Zihuatanejo, Gro'),
                ),
                const Icon(
                  Icons.expand_more_outlined,
                  color: Color(0xFFB3B3B3),
                ),
              ],
            ),
            const _OpenFilterButton(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _OpenFilterButton extends StatelessWidget {
  const _OpenFilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: S.of(context).filter,
      padding: EdgeInsets.zero,
      icon: const Icon(
        Icons.filter_alt_outlined,
        color: Color(0xFF010035),
      ),
      onPressed: () => context
          .read<FilterOptionsBloc>()
          .add(const FilterOptionsEvent.openFilters()),
    );
  }
}

/// Listens for open filter state.
class _BlocListenerForFilterDialog extends StatefulWidget {
  const _BlocListenerForFilterDialog({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<_BlocListenerForFilterDialog> createState() =>
      _BlocListenerForFilterDialogState();
}

class _BlocListenerForFilterDialogState
    extends State<_BlocListenerForFilterDialog> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<FilterOptionsBloc, FilterOptionsState>(
      listener: (context, state) {
        state.mapOrNull(
          openFiltersDialog: (state) async {
            await openFilterDialog(context);

            if (!mounted) return; // drop result if screen is not mounted
            context
                .read<FilterOptionsBloc>()
                .add(const FilterOptionsEvent.saveFilters());
          },
        );
      },
      child: widget.child,
    );
  }
}

Future<T?> openFilterDialog<T>(BuildContext context) async {
  const FiltersModel filters = FiltersModel(
    brands: <String>['Samsung', 'Apple', 'Xiaomi'],
    prices: <String>['\$300 - \$500', '\$500 - \$1000', '\$1000 - \$1500'],
    sizes: <String>['4.5 to 5.5 inches', '5.5 to 6.5 inches'],
  );

  return await showRoundedModalSheet<T>(
    context: context,
    title: 'Filter options',
    child: const FilterDialogUI(filters: filters),
  );
}
