import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/widgets/custom_skills_widget.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
      width: double.maxFinite,
      color: bgLight1,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "What Can I Do ? ",
            style: TextStyle(
                color: whitePrimary, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: bgLight2,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: ListTile(
                        leading: Icon(
                          Icons.android,
                          color: whitePrimary,
                          size: 30,
                        ),
                        title: Text(
                          "Android",
                          style: TextStyle(fontSize: 18, color: whitePrimary),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: bgLight2,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: ListTile(
                        leading: Icon(
                          Icons.apple,
                          color: whitePrimary,
                          size: 30,
                        ),
                        title: Text(
                          "IOS",
                          style: TextStyle(fontSize: 18, color: whitePrimary),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //
              const SizedBox(
                height: 30,
              ),
              //
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomSkillsWidget(text: "Flutter"),
                          CustomSkillsWidget(text: "Dart"),
                          CustomSkillsWidget(text: "Firebase"),
                          CustomSkillsWidget(text: "Api Integration"),
                          CustomSkillsWidget(text: "Google Maps"),
                          CustomSkillsWidget(text: "Push Notifications"),
                        ],
                      ),
                    ],
                  ),
                  //
                  SizedBox(
                    width: 50,
                  ),
                  //
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomSkillsWidget(text: "Localization"),
                          CustomSkillsWidget(text: "GetX"),
                          CustomSkillsWidget(text: "Provider"),
                          CustomSkillsWidget(text: "Responsive"),
                          CustomSkillsWidget(text: "MVC"),
                          CustomSkillsWidget(text: "GitHub"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              //
            ],
          )
        ],
      ),
    );
  }
}