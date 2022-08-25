import 'package:flutter/material.dart';

import '../model/details.dart';

class CarouselView extends StatefulWidget {
  const CarouselView({Key? key, required this.items}) : super(key: key);

  final List<DetailsModel> items;

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        pageSnapping: true,
        itemBuilder: (context, index) {
          return Placeholder(child: Text(index.toString()),);
        },
      ),
    );
  }
}