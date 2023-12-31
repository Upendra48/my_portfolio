import 'package:flutter/material.dart';

import '../constants/skills_items.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            //height: 500,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // title
              const Text(
                "Skills",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              // skills
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // skills
                  Flexible(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width,
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 10,
                        runSpacing: 5,
                        children: [
                          for (int i = 0; i < skillsItems.length; i++)
                            Chip(
                              
                              backgroundColor: Colors.grey[400],
                              padding: const EdgeInsets.symmetric(
                                // match the background color with the card
                                vertical: 12.0,
                                horizontal: 16.0,
                              ),
                              
                              label: Text(skillsItems[i]["title"],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  )),
                              avatar: Image.asset(skillsItems[i]["img"]),
                            ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ]),
          );
  }
}