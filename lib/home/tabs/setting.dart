import 'package:flutter/material.dart';
import 'package:islami_app/My_theme_Data.dart';
import 'package:islami_app/home/bottom_sheets/language_bottom_sheet.dart';
import 'package:islami_app/home/bottom_sheets/theme_bottom_sheet.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Theme"),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                isDismissible: true,
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  return ThemeBottomSheet();
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: primaryColor)),
              child: Text("Light"),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text("Language"),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                isDismissible: true,
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  return LanguageBottomSheet();
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: primaryColor)),
              child: Text("Arabic"),
            ),
          ),
        ],
      ),
    );
  }
}
