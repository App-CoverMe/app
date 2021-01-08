import 'package:app/explore/ui/cm_trending_image_text.dart';
import 'package:flutter/material.dart';

final List<Widget> kTrendingVenuesList = [
  CmTrendingImageText(
    venueEntryFee: 5.00,
    venueName: 'Bar Awesome Sauce',
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
  ),
  CmTrendingImageText(
    venueEntryFee: 7.50,
    venueName: 'Club Wicket',
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
