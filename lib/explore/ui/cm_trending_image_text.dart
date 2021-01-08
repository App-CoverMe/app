import 'package:flutter/material.dart';

class CmTrendingImageText extends StatelessWidget {
  final double venueEntryFee;
  final String venueName;
  final ImageProvider venueImage;
  CmTrendingImageText(
      {@required this.venueEntryFee,
      @required this.venueName,
      @required this.venueImage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 150,
            width: 225,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: venueImage,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  venueName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  '\$${venueEntryFee.toStringAsFixed(2)} entry fee',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
