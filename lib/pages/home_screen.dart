import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/widgets/drawer_mobile.dart';
import 'package:portfolio_web/widgets/header_desktop.dart';
import 'package:portfolio_web/widgets/header_mobile.dart';
import 'package:portfolio_web/widgets/main_desktop.dart';

import '../widgets/main_mobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: scaffoldBg,
        endDrawer: constraints.maxWidth >= 600
            ? null
            : DrawerMobile(
                onNavItemTap: (inte) {},
              ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Main
            constraints.maxWidth >= 600
                ? const HeaderDesktop()
                : HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

            if (constraints.maxWidth >= 600)
              const MainDesktop()
            else
              const MainMobile(),

            // Skills
            Container(
              height: 500,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              width: double.maxFinite,
              color: bgLight1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "What Can I Do ? ",
                    style: TextStyle(
                        color: whitePrimary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
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
                                  style: TextStyle(
                                      fontSize: 18, color: whitePrimary),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
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
                                  style: TextStyle(
                                      fontSize: 18, color: whitePrimary),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //
                      const SizedBox(
                        width: 50,
                      ),
                      //
                       Column(
                        children:  [
                           SizedBox(
                            width:MediaQuery.sizeOf(context).width * 0.25,
                             child:const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Chip(
                              label: Text(
                                "Flutter",
                                style: TextStyle(color: whitePrimary),
                              ),
                              backgroundColor: bgLight2,
                              elevation: 5,
                                                       ),
                             Chip(
                              label: Text(
                                "Dart",
                                style: TextStyle(color: whitePrimary),
                              ),
                              backgroundColor: bgLight2,
                              elevation: 5,
                                                       ),
                             Chip(
                              label: Text(
                                "Firebase",
                                style: TextStyle(color: whitePrimary),
                              ),
                              backgroundColor: bgLight2,
                              elevation: 5,
                                                       ),
                              ],
                             ),
                           ),
                            SizedBox(
                            width:MediaQuery.sizeOf(context).width * 0.35,
                             child:const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Chip(
                              label: Text(
                                "Api Integraion",
                                style: TextStyle(color: whitePrimary),
                              ),
                              backgroundColor: bgLight2,
                              elevation: 5,
                                                       ),
                             Chip(
                              label: Text(
                                "Google Maps",
                                style: TextStyle(color: whitePrimary),
                              ),
                              backgroundColor: bgLight2,
                              elevation: 5,
                                                       ),
                             Chip(
                              label: Text(
                                "Push Notifications",
                                style: TextStyle(color: whitePrimary),
                              ),
                              backgroundColor: bgLight2,
                              elevation: 5,
                                                       ),
                              ],
                             ),
                           ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            // Projects
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            // Contact
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            // Footer
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
          ],
        ),
      );
    });
  }
}
