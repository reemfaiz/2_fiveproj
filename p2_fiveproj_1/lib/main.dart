// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:p2_fiveproj_1/screens/catagories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:p2_fiveproj_1/screens/catagory_trip.dart';
import 'package:p2_fiveproj_1/widgets/trip_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
     const Locale('ar',"AE"), // English يخليهم من اايمين لليسار
     
  ],





      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue, //اللون الاساسي للتطبيق
        textTheme: ThemeData.light().textTheme.copyWith(
            headline4: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontFamily: "Lemonada ",fontSize: 24),
  headline6: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: " Lemonada",fontSize: 26)


                ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: catagoriesscreen(), 
      initialRoute: "/",
routes: {
  "/" :(ctx)=>catagoriesscreen(),
  "/catgorytrip":(ctx)=>catagorytrip(),
  "catagorytrip": (ctx)=> catagorytrip(),
},

    );
  }
}
