import 'package:assignment_task/views/widgets/bnb_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


Widget AppBottomNavigationBar(BuildContext context,bool isLandingPage,int index){

  Size size =MediaQuery.of(context).size;
  return  Stack(
    children: [
      CustomPaint(
        size: Size(size.width,120),
        painter: RPSCustomPainter(),
      ),
      Positioned(
        bottom: 20,
        left: 0,
        right: 0,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home_outlined,color: Color(0xFF5B9EE1),)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Color(0xFF5B9EE1),)),
          SizedBox(width: 30,),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_outlined,color: Color(0xFF5B9EE1),)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person_outline,color: Color(0xFF5B9EE1),)),
        ],
      )),
      Positioned(bottom: 55,left: 0,right: 0,
          child: CircleAvatar(radius: 32,backgroundColor: Color(0xFF5B9EE1),child: Icon(Icons.shopping_bag_outlined,size: 30,color: Colors.white,),))
    ],
  );


}