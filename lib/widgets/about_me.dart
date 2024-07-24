import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
      child: Column(
        children: [
          const Text(
            "About Me",
            style: TextStyle(
                color: whitePrimary, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 500,
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: bgLight2, borderRadius: BorderRadius.circular(15)),
            child: const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Hi, I'm a Flutter developer currently pursuing a Bachelor of Science in Computer Science (BSCS) from PAFKIET University North Campus. I have over a year of experience as a Flutter Developer. I began my career as a Flutter developer intern at Techendology. I then moved to Technopreneurs as a Flutter developer, and now I'm working at Zemfar",
                style: TextStyle(color: whitePrimary, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
 
 
 
  }
}
