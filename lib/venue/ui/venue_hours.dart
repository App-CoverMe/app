import 'package:flutter/material.dart';

import '../venue_screen.dart';

class VenueHours extends StatelessWidget {
  final List<OpeningTimes> openingTimes;

  VenueHours({this.openingTimes});
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
                'Hours',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Column(
            children: List.generate(openingTimes.length, (index) {
              return SingleDayOpeningTimes(openingTimes: openingTimes[index]);
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class SingleDayOpeningTimes extends StatelessWidget {
  final OpeningTimes openingTimes;
  SingleDayOpeningTimes({@required this.openingTimes});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('${openingTimes.day}: '),
        Text(
          '${openingTimes.openingTime}${openingTimes.openingTimeAM ? 'am' : 'pm'} - ${openingTimes.closingTime}${openingTimes.closingTimeAM ? 'am' : 'pm'}',
          style: Theme.of(context).textTheme.subtitle1,
        )
      ],
    );
  }
}
