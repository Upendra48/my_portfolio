import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "Upendra Raj Joshi",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Colors.yellowAccent,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
