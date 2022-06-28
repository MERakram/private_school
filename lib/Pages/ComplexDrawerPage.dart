import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:private_school/Constants/Constants.dart';

import '../Models/CDM.dart';

class ComplexDrawerPage extends StatefulWidget {
  @override
  _ComplexDrawerPageState createState() {
    return _ComplexDrawerPageState();
  }
}

class _ComplexDrawerPageState extends State<ComplexDrawerPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Text(
          'data',
        ),
      ),
      drawer: ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}

class ComplexDrawer extends StatefulWidget {
  @override
  _ComplexDrawerState createState() {
    return _ComplexDrawerState();
  }
}

class _ComplexDrawerState extends State<ComplexDrawer> {
  int selectedIndex = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    // TODO: implement build
    return Container(
      // width: width / 2,
      child: Row(
        children: [
          blackIconMenues(),
          invisibleSubMenues(),
        ],
      ),
    );
  }

  Widget blackIconMenues() {
    return Container(
      width: 150,
      color: Colorz.complexDrawerBlack,
      child: ListView.builder(
        itemCount: cdms.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              height: 45,
              alignment: Alignment.center,
              child: Icon(
                cdms[index].icon,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget invisibleSubMenues() {
    return Container(
      width: 150,
      color: Colors.pink,
      child: ListView.builder(
        itemCount: cdms.length,
        itemBuilder: (BuildContext context, int index) {
          CDM cdm = cdms[index];
          bool selected = selectedIndex == index;
          if (selected) {
            // return subMenuWidget();
            return Container();
          }
          return Text(cdms[index].submenus.toString());
        },
      ),
    );

  }
}
Widget subMenuWidget(List<String> submenus,bool isValidSubMenu){
  return AnimatedContainer(
    duration: Duration(milliseconds:500),
    height: isValidSubMenu? submenus.length.toDouble() *37.5 : 45,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color:isValidSubMenu? Colorz.complexDrawerBlueGrey:
        Colors.transparent,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight:  Radius.circular(8),
        )
    ),
    child: ListView.builder(
        padding: EdgeInsets.all(6),
        itemCount: isValidSubMenu? submenus.length:0,
        itemBuilder: (context,index){
          String subMenu = submenus[index];
          return sMenuButton(subMenu,index==0);
        }
    ),
  );
}
Widget sMenuButton(String subMenu,bool isTitle){
  return InkWell(
    onTap: (){

      //handle the function
      //if index==0? donothing: doyourlogic here
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
    ),
  );
}
List<CDM> cdms = [
  // CDM(Icons.grid_view, "Control", []),

  CDM(Icons.grid_view, "Dashboard", []),
  CDM(Icons.subscriptions, "Category",
      ["HTML & CSS", "Javascript", "PHP & MySQL"]),
  CDM(Icons.markunread_mailbox, "Posts", ["Add", "Edit", "Delete"]),
  CDM(Icons.pie_chart, "Analytics", []),
  CDM(Icons.trending_up, "Chart", []),

  CDM(Icons.power, "Plugins", ["Ad Blocker", "Everything Https", "Dark Mode"]),
  CDM(Icons.explore, "Explore", []),
  CDM(Icons.settings, "Setting", []),
];
