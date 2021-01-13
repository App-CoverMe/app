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
                tags: ['House', 'Chill', 'Live DJ'],
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
              VenueOffers(
                offers: [
                  VenueOffer(
                      title: 'FREE ENTRY',
                      expires: DateTime(2021, 01, 16, 21, 0)),
                  VenueOffer(
                      title: '2 for 1', expires: DateTime(2021, 01, 16, 21, 0)),
                  VenueOffer(
                      title: 'FREE ENTRY',
                      expires: DateTime(2021, 01, 16, 21, 0)),
                  VenueOffer(
                      title: 'FREE ENTRY',
                      expires: DateTime(2021, 01, 16, 21, 0)),
                ],
              ),
              VenueHours(
                openingTimes: [
                  OpeningTimes(
                      day: 'Mon',
                      openingTime: 8,
                      openingTimeAM: true,
                      closingTime: 9,
                      closingTimeAM: false),
                  OpeningTimes(
                      day: 'Tue',
                      openingTime: 8,
                      openingTimeAM: true,
                      closingTime: 9,
                      closingTimeAM: false),
                  OpeningTimes(
                      day: 'Wed',
                      openingTime: 8,
                      openingTimeAM: true,
                      closingTime: 9,
                      closingTimeAM: false),
                  OpeningTimes(
                      day: 'Thurs',
                      openingTime: 8,
                      openingTimeAM: true,
                      closingTime: 9,
                      closingTimeAM: false),
                  OpeningTimes(
                      day: 'Fri',
                      openingTime: 8,
                      openingTimeAM: true,
                      closingTime: 11,
                      closingTimeAM: false),
                  OpeningTimes(
                      day: 'Sat',
                      openingTime: 8,
                      openingTimeAM: true,
                      closingTime: 11,
                      closingTimeAM: false),
                  OpeningTimes(
                      day: 'Sun',
                      openingTime: 8,
                      openingTimeAM: true,
                      closingTime: 9,
                      closingTimeAM: false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Classes that I have created to hold the relevant data.
//These classes would probably exist within an overall venue class
//Feel free to create better classes if you see fit
class VenueOffer {
  final String title;
  final DateTime expires;

  VenueOffer({this.title, this.expires});

  String get remainingTime {
    Duration timeDifference = expires.difference(DateTime.now());
    //This can be imroved for sure
    return '${timeDifference.inHours}hrs ${(timeDifference.inMinutes / 60).toStringAsFixed(0)}mins';
  }
}

class OpeningTimes {
  final String day;
  final int openingTime;
  final bool openingTimeAM;
  final int closingTime;
  final bool closingTimeAM;
  OpeningTimes(
      {this.day,
      this.openingTime,
      this.openingTimeAM,
      this.closingTime,
      this.closingTimeAM});
}
