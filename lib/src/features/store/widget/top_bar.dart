import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/filter_options_bloc.dart';
import '../utils/filter_dialog.dart';

class TopBar extends StatefulWidget implements PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: BlocListener<FilterOptionsBloc, FilterOptionsState>(
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
            IconButton(
              tooltip: 'Filter',
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.filter_alt_outlined,
                color: Color(0xFF010035),
              ),
              onPressed: () => context
                  .read<FilterOptionsBloc>()
                  .add(const FilterOptionsEvent.openFilters()),
            ),
          ],
        ),
      ),
    );
  }
}
