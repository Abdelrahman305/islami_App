import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_details.dart';
import 'package:islami_app/hadeth_model.dart';

class ahadethTab extends StatefulWidget {
  ahadethTab({super.key});

  @override
  State<ahadethTab> createState() => _ahadethTabState();
}

class _ahadethTabState extends State<ahadethTab> {
  List<HadethModel> AllAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (AllAhadeth.isEmpty) {
      loudHadethFile();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/hadith_bg.png",
          height: 219,
        ),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Text(
          "Ahadeth",
          textAlign: TextAlign.center,
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                      arguments: AllAhadeth[index]);
                },
                child: Text(
                  AllAhadeth[index].title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      fontSize: 25, fontWeight: FontWeight.w400),
                ),
              );
            },
            itemCount: AllAhadeth.length,
          ),
        )
      ],
    );
  }

  loudHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then(
      (value) {
        List<String> Ahadeth = value.split("#");
        for (int i = 0; i < Ahadeth.length; i++) {
          String hadethOne = Ahadeth[i];
          List<String> hadethLines = hadethOne.trim().split("\n");
          String title = hadethLines[0];
          hadethLines.removeAt(0);
          List<String> content = hadethLines;
          HadethModel hadethModel = HadethModel(title, content);
          AllAhadeth.add(hadethModel);
          print(hadethModel.title);
        }
        setState(() {});
      },
    );
  }
}
