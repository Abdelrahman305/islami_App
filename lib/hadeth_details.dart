import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "hadeth Details";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      children: [
        Image.asset(
          "assets/images/main_bg.png",
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
