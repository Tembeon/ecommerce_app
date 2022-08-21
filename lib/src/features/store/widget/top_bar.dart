import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Stack(
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
            icon: const Icon(Icons.filter_alt_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
