import 'package:app/constants/placeholders.dart';
import 'package:app/explore/ui/cm_section_header.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CmSectionHeader(
            headerTitle: 'Trending Venues',
            headerIcon: Icons.whatshot,
            headerFunction: () {
              print('View all pressed');
            },
            hasViewAll: false,
            iconColor: Colors.red,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: kTrendingVenuesList.length,
              itemBuilder: (context, index) {
                return kTrendingVenuesList[index];
              },
            ),
          ),
          CmSectionHeader(
            headerTitle: 'Resaurants',
            headerIcon: Icons.restaurant,
            headerFunction: () {
              print('View all pressed');
            },
            hasViewAll: true,
            iconColor: Colors.green,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: kResaurantList.length,
              itemBuilder: (context, index) {
                return kResaurantList[index];
              },
            ),
          ),
          CmSectionHeader(
            headerTitle: 'Bars',
            headerIcon: Icons.local_bar,
            headerFunction: () {
              print('View all pressed');
            },
            hasViewAll: true,
            iconColor: Colors.blue,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: kResaurantList.length,
              itemBuilder: (context, index) {
                return kResaurantList[index];
              },
            ),
          ),
          CmSectionHeader(
            headerTitle: 'Clubs',
            headerIcon: Icons.music_note,
            headerFunction: () {
              print('View all pressed');
            },
            hasViewAll: true,
            iconColor: Colors.purple,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: kResaurantList.length,
              itemBuilder: (context, index) {
                return kResaurantList[index];
              },
            ),
          ),
          // Todo: Get the size of bottom nav bar and change size of SizedBox to match that
          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
