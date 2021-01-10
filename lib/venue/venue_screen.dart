import 'package:app/venue/ui/social_media_row.dart';
import 'package:app/venue/ui/venue_address.dart';
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
            VenueAddress(
              addressNumber: 120,
              addressStreet: 'Road name',
              addressCity: 'City',
              addressZip: 'Zip Code',
              distanceFromUser: 1.3,
            ),
          ],
        ),
      ),
    );
  }
}
