import 'package:flutter/material.dart';

class VenueImagesCarousel extends StatelessWidget {
  final List<String> venueImages = [
    'assets/images/bar_image_1.jpg',
    'assets/images/bar_image_1.jpg',
    'assets/images/bar_image_1.jpg',
    'assets/images/bar_image_1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: venueImages.length,
        itemBuilder: (context, index) {
          return VenueImage(
            image: venueImages[index],
          );
        },
      ),
    );
  }
}

class VenueImage extends StatelessWidget {
  final String image;
  VenueImage({@required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
