import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  double angle = 0;
  List<String> Azkar = [
    "سبحان الله",
    "الحمدالله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset("assets/images/sebha_head.png"),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Transform.rotate(
                  angle: angle,
                  child: GestureDetector(
                      onTap: () {
                        OnTap();
                      },
                      child: Image.asset("assets/images/sebha_body.png")),
                ),
              ),
            ],
          ),
          Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
            style: GoogleFonts.elMessiri(
                fontWeight: FontWeight.w600, fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffB7935F)),
                  child: Text(
                    "$count",
                    style: GoogleFonts.inter(
                        fontSize: 25, fontWeight: FontWeight.w400),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffB7935F)),
                  child: Text(
                    "${Azkar[index]}",
                    style: GoogleFonts.inter(
                        fontSize: 25, fontWeight: FontWeight.w400),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  OnTap() {
    count++;
    if (count % 33 == 0) {
      index++;
      count++;
      count = 0;
    }
    if (index == Azkar.length) {
      index = 0;
    }
    angle += 360 / 4;
    setState(() {});
  }
}
