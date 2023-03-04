import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCustomNewArrCard extends StatelessWidget {
  const AppCustomNewArrCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical:10.h),
      height: 120.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Best Choice",style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xFF5B9EE1),fontSize: 12.sp),),
              SizedBox(height: 4.h,),
              Text("Nike Jordan",style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xFF1A2530),fontSize: 20.sp),),
              SizedBox(height: 10.h,),
              Text("\$893.00",style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xFF1A2530),fontSize: 16.sp),)
            ],
          )),
          Expanded(child: Center(
            child: Container(
              height: 80.h,
              width: 132.w,
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/images/shoe2.png"),
                  fit: BoxFit.cover
              )),),
          )),

        ],
      ),
    );
  }
}
