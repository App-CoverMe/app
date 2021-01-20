import 'package:app/constants/placeholders.dart';
import 'package:app/feed/ui/venue_feed_item.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: kVenuePosts.length,
      // Bottom padding is so that bottom content isn't hidden under bottom nav bar
      padding: EdgeInsets.only(bottom: 60),
      itemBuilder: (context, index) {
        return VenueFeedItem(
          venuePost: kVenuePosts[index],
        );
      },
    );
  }
}
