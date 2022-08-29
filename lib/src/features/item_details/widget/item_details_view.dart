import 'package:flutter/material.dart';

import '../model/details.dart';
import 'carousel.dart';
import 'top_bar.dart';

class DetailsWithCarousel extends StatelessWidget {
  const DetailsWithCarousel({
    Key? key,
    required this.models,
  }) : super(key: key);

  final List<DetailsModel> models;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: ToolBar()),
            SliverToBoxAdapter(
              child: CarouselView(
                items: models,
                pageController: PageController(viewportFraction: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
