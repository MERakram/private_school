// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubjectCard extends StatelessWidget {
  String? Subject;
  IconData? SubjectIcon;
  SubjectCard({Key? key, this.Subject, this.SubjectIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xffffefe2),
            borderRadius: BorderRadius.circular(20)),
        width: Get.width * 0.2,
        height: Get.height * 0.1,
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(
            Subject ?? 'subject',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Container(
            width: Get.width * 0.04,
            height: Get.height * 0.1,
            decoration: BoxDecoration(
                color: const Color(0xffeddacb),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(SubjectIcon ?? Icons.error_outline),
          ),
        ),
      ),
    );
  }
}
