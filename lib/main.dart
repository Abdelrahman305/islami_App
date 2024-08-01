import 'package:flutter/material.dart';
import 'package:islami_app/My_theme_Data.dart';
import 'package:islami_app/hadeth_details.dart';
import 'package:islami_app/home/HomeScreen.dart';
import 'package:islami_app/providers/My_provider.dart';
import 'package:islami_app/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: provider.mode,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute:Homescreen.routeName ,
      routes: {
        Homescreen.routeName:(context) =>const Homescreen(),
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => const HadethDetailsScreen(),
      },

    );
  }
}