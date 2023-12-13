import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/logo_site.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, this.onLogoTap});

  final VoidCallback? onLogoTap;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.transparent,
            Color.fromRGBO(0, 0, 0, 1),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(children: [
        SiteLogo(
          onTap: onLogoTap,
        ),
        const Spacer(),
        for (int i = 0; i < navItems.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  navItems[i],
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )),
          ),
      ]),
    );
  }
}
