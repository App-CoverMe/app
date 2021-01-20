import 'package:app/explore/ui/cm_trending_image_text.dart';
import 'package:app/explore/ui/cm_venue_image_text.dart';
import 'package:app/feed/ui/venue_feed_item.dart';
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

final List<VenuePost> kVenuePosts = [
  VenuePost(
    postType: PostType.Discount,
    postTitle: 'Awesome discount!',
    postDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
    venueName: 'Awesome venue',
    expiaryDate: DateTime.now().add(
      Duration(hours: 3),
    ),
  ),
  VenuePost(
    postType: PostType.Update,
    postTitle: 'New Menu',
    postDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    venueImage: AssetImage('assets/images/bar_image_2.jpg'),
    venueName: 'Nightclub 3',
    expiaryDate: DateTime.now().add(
      Duration(hours: 5),
    ),
  ),
  VenuePost(
    postType: PostType.Update,
    postTitle: '2 4 1',
    postDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    venueImage: AssetImage('assets/images/bar_image_3.jpg'),
    venueName: 'Bar number 5',
    expiaryDate: DateTime.now().add(
      Duration(hours: 2),
    ),
  ),
  VenuePost(
    postType: PostType.Discount,
    postTitle: 'Free entry until 10pm',
    postDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    venueImage: AssetImage('assets/images/bar_image_4.jpg'),
    venueName: 'Club club club',
    expiaryDate: DateTime.now().add(
      Duration(hours: 10),
    ),
  ),
  VenuePost(
    postType: PostType.Discount,
    postTitle: 'Live DJ all night',
    postDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    venueImage: AssetImage('assets/images/bar_image_1.jpg'),
    venueName: 'Awesome venue',
    expiaryDate: DateTime.now().add(
      Duration(hours: 25),
    ),
  ),
];
