import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:islami_app/providers/My_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "hadeth Details";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;

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
            backgroundColor: Colors.transparent,
            title: Text(
              model.title,
              style:
                  GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                model.content[index],
              );
            },
            itemCount: model.content.length,
          ),
        ),
      ],
    );
  }
}
