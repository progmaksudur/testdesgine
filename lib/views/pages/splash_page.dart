import 'dart:async';

import 'package:assignment_task/views/pages/home_page.dart';
import 'package:assignment_task/views/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  static const String routeName="/splash";
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    WidgetsBinding.instance.addPostFrameCallback((_) {

      Timer(
          Duration(seconds: 5),
              () {

            Navigator.pushNamed(context, HomePage.routeName);
          });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash.jpg"),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.low
          )
        ),
        child: Center(
          child: Text("Oxy Boots",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 28.sp,color: Color(0xFF5B9EE1)),),
        ),
      ),
    );
  }
}
