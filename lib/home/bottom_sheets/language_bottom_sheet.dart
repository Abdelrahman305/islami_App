import 'package:flutter/material.dart';
import 'package:islami_app/My_theme_Data.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Arabic",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: primaryColor),
              ),
              Icon(
                Icons.done,
                size: 30,
                color: primaryColor,
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English"),
              //Icon(Icons.done)
            ],
          )
        ],
      ),
    );
  }
}
