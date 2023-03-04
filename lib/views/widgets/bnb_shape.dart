import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color =  Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(0,size.height);
    path0.quadraticBezierTo(0,size.height*0.3437500,0,size.height*0.1250000);
    path0.cubicTo(size.width*0.0645500,size.height*0.2519500,size.width*0.3119000,size.height*0.3035000,size.width*0.3633125,size.height*0.2979000);
    path0.cubicTo(size.width*0.4126375,size.height*0.2988500,size.width*0.3755250,size.height*0.5477000,size.width*0.4007000,size.height*0.6041000);
    path0.cubicTo(size.width*0.4518250,size.height*0.7020000,size.width*0.5499250,size.height*0.7022500,size.width*0.5994750,size.height*0.6001000);
    path0.cubicTo(size.width*0.6250750,size.height*0.5493000,size.width*0.5875875,size.height*0.3004500,size.width*0.6387875,size.height*0.3026500);
    path0.cubicTo(size.width*0.6870750,size.height*0.2983000,size.width*0.9381125,size.height*0.2529500,size.width,size.height*0.1255000);
    path0.quadraticBezierTo(size.width*1.0010250,size.height*0.3441500,size.width,size.height);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
