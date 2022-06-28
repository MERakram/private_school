import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            )),
      ),
    );
    // Stack(
    //   children: [
    //   Container(
    //     decoration: BoxDecoration(
    //         color: const Color(0xffeddacb),
    //         borderRadius: BorderRadius.circular(10)),
    //     child: Icon(Icons.notifications),
    //   )
    // ]);
  }
}
