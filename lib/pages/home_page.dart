//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
//import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
//import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';

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
      backgroundColor: CustomColor.scaffoldBg,
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

          //* skills section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

          //* projects section
          Container(
            height: 500,
            width: double.maxFinite,
          ),

          //* contact section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

          //* blogs section
          Container(
            height: 500,
            width: double.maxFinite,
          ),

          //* footer section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
