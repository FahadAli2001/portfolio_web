import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/widgets/about_me.dart';
import 'package:portfolio_web/widgets/drawer_mobile.dart';
import 'package:portfolio_web/widgets/header_desktop.dart';
import 'package:portfolio_web/widgets/header_mobile.dart';
import 'package:portfolio_web/widgets/main_desktop.dart';
import 'package:portfolio_web/widgets/skills_desktop.dart';
import 'package:portfolio_web/widgets/skills_mobile.dart';
import 'package:portfolio_web/widgets/work_detail.dart';

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

            const AboutMe(),

            // Skills
            constraints.maxWidth >= 600
                ? const SkillsDesktop()
                : const SkillsMobile(),
            // work detials
            const WorkDetail(),
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
