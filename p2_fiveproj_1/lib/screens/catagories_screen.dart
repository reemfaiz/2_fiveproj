// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/category_item.dart';

class catagoriesscreen extends StatelessWidget {
  const catagoriesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "دليل السياحه",
          style: TextStyle(color: Colors.white,fontFamily: "Lemonada "),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          children: category_data.map((categoryData) => categoryitem( id: categoryData.id, title:categoryData.title , image:categoryData.image)).toList(),

            
        ),
    );
  }
}
