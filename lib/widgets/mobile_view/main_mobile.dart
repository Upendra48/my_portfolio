import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: MediaQuery.of(context).size.height,
      constraints: const BoxConstraints(
        minHeight: 560,
      ),
      child: Column(
        children: [
          // Image
          Image.asset(
            'assets/flutter_dev.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.5,
          ),

          // text and btn
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hello,\nI'm Upendra Raj Joshi\nA Developer",
                style: TextStyle(
                  height: 1.3,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Hire Me"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
