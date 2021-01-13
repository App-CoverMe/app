import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class VenueImagesCarousel extends StatelessWidget {
  final List<String> venueImages;
  VenueImagesCarousel({this.venueImages});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 100,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8),
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CmPhotoView(
              image: image,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}

class CmPhotoView extends StatelessWidget {
  final String image;
  CmPhotoView({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoView(
        imageProvider: AssetImage(image),
      ),
    );
  }
}
