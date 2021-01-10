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
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
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
    );
  }
}
