import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // intro message
              const Text(
                "Hi,\nI'm Fahad Ali\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              // contact btn
              SizedBox(
                width: 300.0,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(yellowPrimary),
                  ),
                  onPressed: () {},
                  child: const Text("Get in touch",
                  style: TextStyle(color: whitePrimary,
                  fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
          // avatar img
          Image.asset(
            "assets/my_flutter_avatar.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
