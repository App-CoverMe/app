import 'package:flutter/material.dart';

enum PostType { Update, Discount }

class VenuePost {
  // Placeholder
  ImageProvider venueImage;
  String venueName;

  // Not placeholder
  // Venue venue;
  String postTitle;
  String postDescription;
  DateTime expiaryDate;
  PostType postType;

  VenuePost({
    @required this.venueImage,
    @required this.venueName,
    @required this.postTitle,
    @required this.postDescription,
    @required this.expiaryDate,
    @required this.postType,
  });

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString();
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    return "${twoDigits(duration.inHours)}hrs ${twoDigitMinutes}mins";
  }

  String get timeRemaining {
    var now = DateTime.now();
    var difference = expiaryDate.difference(now);
    return _printDuration(difference);
  }
}

class VenueFeedItem extends StatelessWidget {
  final VenuePost venuePost;
  VenueFeedItem({this.venuePost});
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: venuePost.venueImage,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(
                      venuePost.postType == PostType.Discount
                          ? Icons.whatshot
                          : Icons.info_outline,
                      size: 20,
                      color: venuePost.postType == PostType.Discount
                          ? Colors.red
                          : Colors.blue,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      venuePost.postTitle,
                      style: textStyle.headline6,
                    ),
                  ],
                ),
                Text(
                  venuePost.venueName,
                  style: textStyle.subtitle1,
                ),
                Text(
                  venuePost.postDescription,
                  style: textStyle.bodyText1,
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      size: 16,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '${venuePost.timeRemaining} left',
                      style: textStyle.bodyText1
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
