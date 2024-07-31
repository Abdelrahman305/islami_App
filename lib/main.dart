import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_details.dart';
import 'package:islami_app/home/HomeScreen.dart';
import 'package:islami_app/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute:Homescreen.routeName ,
      routes: {
        Homescreen.routeName:(context) =>const Homescreen(),
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => const HadethDetailsScreen(),
      },

    );
  }
}