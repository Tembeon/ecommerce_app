import 'package:flutter/material.dart';

import '../model/details.dart';
import 'device_info.dart';

class CarouselView extends StatefulWidget {
  const CarouselView({
    Key? key,
    required this.items,
    required this.pageController,
  }) : super(key: key);

  /// Result with devices info
  final List<DetailsModel> items;

  /// Controller for controlling carousel and current description
  final PageController pageController;

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  // storing current active item. Used for passing to ActiveInfoStore
  late DetailsModel currentItem;

  @override
  void initState() {
    super.initState();
    currentItem = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      initialData: false, // delay for awaiting pagecontroller to be used
      future: Future<bool>.delayed(const Duration(microseconds: 200), () => true),
      builder: (context, loading) {
        if (!loading.data!) {
          return const Center(child: CircularProgressIndicator());
        }

        return ActiveInfoStore(
          detailsModel: currentItem,
          child: Column(
            children: [
              SizedBox(
                height: 400,
                child: PageView.builder(
                  controller: widget.pageController,
                  onPageChanged: (page) {
                    setState(() {
                      // update current active item
                      currentItem = widget.items[page];
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.items.length,
                  pageSnapping: true,
                  itemBuilder: (context, index) => const DeviceBigPicture(),
                ),
              ),
              const DeviceInfoSection(),
            ],
          ),
        );
      },
    );
  }
}

/// Show device image in card. Uses [ActiveInfoStore]
class DeviceBigPicture extends StatelessWidget {
  const DeviceBigPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(12.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.network(ActiveInfoStore.of(context).images.first),
      ),
    );
  }
}
