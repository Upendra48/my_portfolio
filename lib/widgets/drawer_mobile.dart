import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/nav_items.dart';
//import 'package:my_portfolio/pages/home_page.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color.fromARGB(255, 84, 78, 57),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ),
            ),
            for (int i = 0; i < navIcons.length; i++)
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                onTap: () {},
                leading: Icon(
                  navIcons[i],
                  color: Colors.white,
                ),
                title: Text(navItems[i],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              )
          ],
        ),
      );
  }
}