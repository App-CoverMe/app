import 'package:flutter/material.dart';

import '../venue_screen.dart';

class VenueOffers extends StatelessWidget {
  final List<VenueOffer> offers;
  VenueOffers({this.offers});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Active Offers',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
        Container(
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: offers.length,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            itemBuilder: (context, index) {
              return OfferCard(
                venueOffer: offers[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class OfferCard extends StatelessWidget {
  final VenueOffer venueOffer;
  OfferCard({this.venueOffer});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 150,

        // decoration: BoxDecoration(
        //   color: Colors.grey,
        //   borderRadius: BorderRadius.circular(5),
        // ),
        child: CustomPaint(
          painter: CmOfferCardPainter(
            cardColor: Colors.orange,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${venueOffer.title}',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text('${venueOffer.remainingTime}'),
            ],
          ),
        ),
      ),
    );
  }
}

class CmOfferCardPainter extends CustomPainter {
  final Color cardColor;
  CmOfferCardPainter({@required this.cardColor});
  @override
  void paint(Canvas canvas, Size size) {
    // Get the vertical center point
    var middle = size.height / 2;
    final cutoutSize = 8.0;

    // Define the paint for the circle
    var circlePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..blendMode = BlendMode.dstOut;

    // Define the paint for the rectangle
    final RRect rectangle =
        RRect.fromLTRBR(0, 0, size.width, size.height, Radius.circular(5));
    var rectPaint = Paint()
      ..color = cardColor ?? Colors.white
      ..style = PaintingStyle.fill
      ..blendMode = BlendMode.srcOver;

    // Draw the rectangle onto the canvas
    canvas.drawRRect(rectangle, rectPaint);

    // Draw the circle on the canvas
    canvas.drawCircle(Offset(0, middle), cutoutSize, circlePaint);
    canvas.drawCircle(Offset(size.width, middle), cutoutSize, circlePaint);

    // Save and restore the canvas to apply the blend mode
    canvas.saveLayer(null, circlePaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
