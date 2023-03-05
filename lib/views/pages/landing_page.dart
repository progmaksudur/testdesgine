import 'package:assignment_task/views/pages/home_page.dart';
import 'package:assignment_task/views/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';



class LandingPage extends StatefulWidget {
  static const String routeName="landing";
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return ZoomDrawer(
      controller: zoomDrawerController,
      style: DrawerStyle.Style2,
      menuScreen: MenuPage(),
      mainScreen: HomePage(),
      borderRadius: 24.0,
      showShadow: true,
      angle: -12.0,
      slideWidth: MediaQuery.of(context).size.width*.50,

      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    );
  }
}
