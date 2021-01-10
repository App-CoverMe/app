import 'package:app/venue/ui/social_media_row.dart';
import 'package:app/venue/ui/venue_header.dart';
import 'package:app/venue/ui/venue_images.dart';
import 'package:flutter/material.dart';

class VenueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            VenueHeader(),
            SocialMediaRow(),
            VenueImagesCarousel(),
          ],
        ),
      ),
    );
  }
}
