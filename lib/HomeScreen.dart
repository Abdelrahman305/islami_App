import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  static const String routeNmae="home";
  const Homescreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("islami"),
      ),
    );
  }
}
