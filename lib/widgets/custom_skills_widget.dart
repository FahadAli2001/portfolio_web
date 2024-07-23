import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';

class CustomSkillsWidget extends StatelessWidget {
  final String text;
  const CustomSkillsWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chip(
        label: SizedBox(
          height: 20,
          width: 120,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: whitePrimary),
            ),
          ),
        ),
        backgroundColor: bgLight2,
        elevation: 5,
      ),
    );
  }
}
