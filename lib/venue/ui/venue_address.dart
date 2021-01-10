import 'package:flutter/material.dart';

class VenueAddress extends StatelessWidget {
  final int addressNumber;
  final String addressStreet;
  final String addressCity;
  final String addressZip;
  final double distanceFromUser;
  VenueAddress(
      {this.addressNumber,
      this.addressStreet,
      this.addressCity,
      this.addressZip,
      this.distanceFromUser});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Address',
                style: Theme.of(context).textTheme.headline6,
              ),
              Row(
                children: [
                  Icon(Icons.place),
                  Text(
                    '$distanceFromUser miles',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ],
          ),
          Text('$addressNumber $addressStreet\n$addressCity\n$addressZip'),
        ],
      ),
    );
  }
}
