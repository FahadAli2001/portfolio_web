import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/widgets/drawer_mobile.dart';
import 'package:portfolio_web/widgets/header_desktop.dart';
import 'package:portfolio_web/widgets/header_mobile.dart';
import 'package:portfolio_web/widgets/main_desktop.dart';
import 'package:portfolio_web/widgets/skills_desktop.dart';
import 'package:portfolio_web/widgets/skills_mobile.dart';

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
            // About Me

            Container(
              width: double.infinity,
              height: 500,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              child: Column(
                children: [
                  const Text(
                    "About Me",
                    style: TextStyle(
                        color: whitePrimary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 500,
                    margin:const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: bgLight2,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "Hi, I'm a Flutter developer currently pursuing a Bachelor of Science in Computer Science (BSCS) from PAFKIET University North Campus. I have over a year of experience as a Flutter Developer. I began my career as a Flutter developer intern at Techendology. I then moved to Technopreneurs as a Flutter developer, and now I'm working at Zemfar",
                        style: TextStyle(color: whitePrimary,
                        fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Skills
            constraints.maxWidth >= 600
                ? const SkillsDesktop()
                : const SkillsMobile(),
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
