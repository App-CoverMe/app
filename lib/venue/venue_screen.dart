import 'package:app/venue/ui/social_media_row.dart';
import 'package:app/venue/ui/venue_address.dart';
import 'package:app/venue/ui/venue_header.dart';
import 'package:app/venue/ui/venue_hours.dart';
import 'package:app/venue/ui/venue_images.dart';
import 'package:app/venue/ui/venue_offers.dart';
import 'package:flutter/material.dart';

class VenueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              VenueHeader(
                venueName: 'Venue Name 1',
              ),
              SocialMediaRow(),
              VenueImagesCarousel(
                venueImages: [
                  'assets/images/bar_image_1.jpg',
                  'assets/images/bar_image_2.jpg',
                  'assets/images/bar_image_3.jpg',
                  'assets/images/bar_image_4.jpg',
                ],
              ),
              VenueAddress(
                addressNumber: 120,
                addressStreet: 'Road name',
                addressCity: 'City',
                addressZip: 'Zip Code',
                distanceFromUser: 1.3,
              ),
              VenueOffers(),
              VenueHours(),
            ],
          ),
        ),
      ),
    );
  }
}
