import 'package:app/explore/ui/cm_trending_image_text.dart';
import 'package:app/explore/ui/cm_venue_image_text.dart';
import 'package:app/venue/venue_screen.dart';
import 'package:flutter/material.dart';

final List<Widget> kTrendingVenuesList = [
  CmTrendingImageText(
    venueEntryFee: 5.00,
    venueName: 'Bar Awesome Sauce',
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
  ),
  CmTrendingImageText(
    venueEntryFee: 7.50,
    venueName: 'Club Wicked',
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
  ),
  CmTrendingImageText(
    venueEntryFee: 10.00,
    venueName: 'Hello there mate',
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
  ),
  CmTrendingImageText(
    venueEntryFee: 2.50,
    venueName: 'Imagination run dry',
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
  ),
];

final List<Widget> kResaurantList = [
  CmVenueImageText(
    venueEntryFee: 5.00,
    venueName: 'Restaurant Awesome Sauce',
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
    venuePage: VenueScreen(),
  ),
  CmVenueImageText(
    venueEntryFee: 7.50,
    venueName: 'Restaurant Wicket',
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
    venuePage: VenueScreen(),
  ),
  CmVenueImageText(
    venueEntryFee: 10.00,
    venueName: 'Restaurant hello there mate',
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
    venuePage: VenueScreen(),
  ),
  CmVenueImageText(
    venueEntryFee: 2.50,
    venueName: 'Restaurant run dry',
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
    venuePage: VenueScreen(),
  ),
];
