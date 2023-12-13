//import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
//import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/mobile_view/drawer_mobile.dart';
import 'package:my_portfolio/widgets/desktop_view/header_desktop.dart';
//import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/mobile_view/header_mobile.dart';
import 'package:my_portfolio/widgets/desktop_view/main_desktop.dart';
import 'package:my_portfolio/widgets/mobile_view/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.blueGrey,
      endDrawer: MediaQuery.of(context).size.width >= MinDesktopSize
          ? null
          : const DrawerMobile(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //* main section

          if (MediaQuery.of(context).size.width > MinDesktopSize)
            const HeaderDesktop()
          else
            HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            ),

          
          if (MediaQuery.of(context).size.width > MinDesktopSize)
            const MainDesktop()
          else
            const MainMobile(),

          //* skills section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.grey,
            child: const Column(children: [
              // title
              Text(
                "Skills",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // skills
            ]),
          ),

          //* projects section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

          //* contact section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.grey,
          ),

          //* blogs section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

          //* footer section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
