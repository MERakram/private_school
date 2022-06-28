// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:private_school/components/appbar_icon.dart';
import 'package:private_school/components/subject_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'My Classes',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          AppBarIcon(),
          AppBarIcon(),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SubjectCard(),
                  SubjectCard(),
                ],
              ),
              Row(
                children: [
                  SubjectCard(),
                  SubjectCard(),
                ],
              ),
              Row(
                children: [
                  SubjectCard(),
                  SubjectCard(),
                ],
              ),
              Row(
                children: [
                  SubjectCard(),
                  SubjectCard(),
                ],
              ),
              Row(
                children: [
                  SubjectCard(),
                  SubjectCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
