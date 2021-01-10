import 'package:flutter/material.dart';

class VenueHours extends StatelessWidget {
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
          SingleDayOpeningTimes(
            openingTimes: OpeningTimes(
                day: 'Mon',
                openingTime: 8,
                openingTimeAM: true,
                closingTime: 9,
                closingTimeAM: false),
          ),
          SingleDayOpeningTimes(
            openingTimes: OpeningTimes(
                day: 'Tue',
                openingTime: 8,
                openingTimeAM: true,
                closingTime: 9,
                closingTimeAM: false),
          ),
          SingleDayOpeningTimes(
            openingTimes: OpeningTimes(
                day: 'Wed',
                openingTime: 8,
                openingTimeAM: true,
                closingTime: 9,
                closingTimeAM: false),
          ),
          SingleDayOpeningTimes(
            openingTimes: OpeningTimes(
                day: 'Thur',
                openingTime: 8,
                openingTimeAM: true,
                closingTime: 9,
                closingTimeAM: false),
          ),
          SingleDayOpeningTimes(
            openingTimes: OpeningTimes(
                day: 'Fri',
                openingTime: 8,
                openingTimeAM: true,
                closingTime: 11,
                closingTimeAM: false),
          ),
          SingleDayOpeningTimes(
            openingTimes: OpeningTimes(
                day: 'Sat',
                openingTime: 8,
                openingTimeAM: true,
                closingTime: 11,
                closingTimeAM: false),
          ),
          SingleDayOpeningTimes(
            openingTimes: OpeningTimes(
                day: 'Sun',
                openingTime: 8,
                openingTimeAM: true,
                closingTime: 9,
                closingTimeAM: false),
          ),
        ],
      ),
    );
  }
}

class OpeningTimes {
  final String day;
  final int openingTime;
  final bool openingTimeAM;
  final int closingTime;
  final bool closingTimeAM;
  OpeningTimes(
      {this.day,
      this.openingTime,
      this.openingTimeAM,
      this.closingTime,
      this.closingTimeAM});
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
