import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/nav_tiles.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.maxFinite,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.transparent, bgLight1],
          ),
          borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: const Text(
              "FA",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: yellowSecondary,
              ),
            ),
          ),
          const Spacer(),
          for (var i = 0; i < navTitles.length; i++) ...[
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    navTitles[i],
                    style: const TextStyle(
                        fontSize: 16,
                        color: whitePrimary,
                        fontWeight: FontWeight.w500),
                  )),
            )
          ]
        ],
      ),
    );
  }
}
