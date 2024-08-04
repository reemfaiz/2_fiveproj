// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last, deprecated_member_use, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:p2_fiveproj_1/screens/catagory_trip.dart';

class categoryitem extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  categoryitem({
    required this.id,
    required this.title,
    required this.image,
  });

  void selectcatgory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed("/catgorytrip", arguments: {"id ": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectcatgory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              image,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15)))
        ],
      ),
    );
  }
}
