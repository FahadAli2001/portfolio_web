import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';

class WorkDetail extends StatelessWidget {
  const WorkDetail({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
      width: double.infinity,
      height: 600,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
      child: Column(
        children: [
          const Text(
            "Work Detail",
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
                "I am an expert in creating responsive user interfaces. Additionally, I have experience working with Firebase, including authentication, Google login, Apple login, and real-time database management. I am also proficient in working with RESTful APIs. To manage app state, I have used state management tools such as GetX or Provider. Furthermore, I have experience with push notifications and Google Maps APIs, including getting nearby locations, places, details, images, and routes",
                style: TextStyle(color: whitePrimary, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
 
 
 
  }
}