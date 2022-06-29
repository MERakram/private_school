import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:private_school/Pages/ComplexDrawerPage.dart';
import 'package:private_school/Pages/drawerGit.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3a3b3f),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.to(
            ComplexDrawerPageGit(),
          ),
          child: Text('to drawer'),
        ),
      ),
    );
  }
}
