import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';


class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
    this.onLogoTap,
    this.onMenuTap,
  });
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
       decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(100),
                gradient: const  LinearGradient(
                  colors: [Colors.transparent, bgLight1],
                ),
       ),
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
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu,
            color: whitePrimary,),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}