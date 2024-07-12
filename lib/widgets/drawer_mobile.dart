import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/nav_tiles.dart';



class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
    super.key,
    required this.onNavItemTap,
  });
  final Function(int) onNavItemTap;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close,
                color: whitePrimary,),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              titleTextStyle: const TextStyle(
                color: whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              onTap: () {
                onNavItemTap(i);
              },
              leading: Icon(navIcons[i],
              color: whitePrimary,),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}