import 'package:assignment_task/views/pages/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCustomProductCard extends StatelessWidget {
  const AppCustomProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, ProductDetailPage.routeName);

          },
          child: Container(
            height: 201.h,
            width: 156.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Center(
                    child: Container(
                      height: 80.h,
                      width: 132.w,
                      decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage("assets/images/shoe1.png"),
                      fit: BoxFit.cover
                    )),),
                  )),
                  Expanded(child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Best Seller",style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xFF5B9EE1),fontSize: 12.sp),),
                        Text("Nike Jordan",style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xFF1A2530),fontSize: 16.sp),),
                        SizedBox(height: 12.h,),
                        Text("\$493.00",style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xFF1A2530),fontSize: 14.sp),)


                      ],
                    ),
                  )),
                ],
              ),
            ),


          ),
        ),
        Positioned(
        bottom: 3.h,
        right: 3.w,
        child: Container(
          height: 35.h,
          width: 35.h,
          decoration: BoxDecoration(
            color: Color(0xFF5B9EE1),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r),bottomRight:Radius.circular(10.r))
          ),
          child: Center(child: InkWell(onTap: (){},child: Icon(Icons.add,color: Colors.white,)),),
        ))
      ],
    );
  }
}
