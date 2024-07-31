import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetails";

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loudSuraFile(model.index);
    }

    return Stack(children: [
      Image.asset(
        "assets/images/main_bg.png",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            model.name,
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              "${verses[index]}(${index + 1})",
              style:
                  GoogleFonts.inder(fontSize: 20, fontWeight: FontWeight.w400),
            );
          },
          itemCount: verses.length,
        ),
      ),
    ]);
  }

  loudSuraFile(index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLines = sura.split("\n");
    print(suraLines);
    verses = suraLines;
    setState(() {});
  }
}
