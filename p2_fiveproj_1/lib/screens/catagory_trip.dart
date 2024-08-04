// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, duplicate_import, unused_import

import 'dart:core';

import 'package:flutter/material.dart';
//import 'package:p2_fiveproj_1/models/category.dart';
import '../widgets/trip_item.dart';
import '../app_data.dart';

class catagorytrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final roateArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final id = roateArgument["id"];
    final title = roateArgument["title"];
    final filteredTrips = Trips_data.where((trip) {
      return trip.categories.contains(id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return tripitem(
                title: filteredTrips[index].title,
                imageUrl:filteredTrips[index]. imageUrl,
                tripType: filteredTrips[index].tripType,
                season:filteredTrips[index]. season);
          },
          itemCount: filteredTrips.length,
        ));
  }
}
