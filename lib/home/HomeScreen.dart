import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/My_theme_Data.dart';
import 'package:islami_app/home/tabs/Quran.dart';
import 'package:islami_app/home/tabs/Sebha.dart';
import 'package:islami_app/home/tabs/ahadeth.dart';
import 'package:islami_app/home/tabs/radio.dart';
import 'package:islami_app/home/tabs/setting.dart';
import 'package:islami_app/providers/My_provider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = "home";

  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.mode == ThemeMode.light
              ? "assets/images/main_bg.png"
              : "assets/images/dark_background.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              "islami",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              // backgroundColor: MyThemeData.primaryColor,

              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                    label: "",
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                    label: "",
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio.png")),
                    label: "",
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                    label: "",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "",
                ),
              ]),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    ahadethTab(),
    SettingTab(),
  ];
}
