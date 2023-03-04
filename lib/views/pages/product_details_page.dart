import 'package:assignment_task/views/widgets/app_custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProductDetailPage extends StatefulWidget {
  static const String routeName = "/productDetails";
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Color(0xFFf7f7f7),
      appBar: AppCustomAppBar(
        leading: Icons.arrow_back,
        middle:"Men’s Shoes" ,
        ab: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200.h,
            width: double.infinity,
            child: WebView(
              initialUrl: 'https://app.vectary.com/p/7Rkk09lqFGjKTngQ1jjyYk',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(height: 14.h,),
                  Text("Best Seller",style: TextStyle(color: Color(0xFF5B9EE1),fontSize:14.sp,fontWeight: FontWeight.w400 ),),
                  SizedBox(height: 14.h,),
                  Text("Nike Air Jordan",style: TextStyle(color: Color(0xFF1A2530),fontSize:24.sp,fontWeight: FontWeight.w500 ),),
                  SizedBox(height: 12.h,),
                  Text("\$967.800",style: TextStyle(color: Color(0xFF1A2530),fontSize:20.sp,fontWeight: FontWeight.w500 ),),
                  SizedBox(height: 8.h,),
                  Text("Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....",style: TextStyle(color: Color(0xFF707B81),fontSize:14.sp,fontWeight: FontWeight.w400 ),),
                  SizedBox(height: 16.h,),
                  Text("Gallery",style: TextStyle(color: Color(0xFF1A2530),fontSize:20.sp,fontWeight: FontWeight.w500 ),),
                  SizedBox(height: 16.h,),
                  SizedBox(
                  height: 60.h
                  ,child: ListView.builder(itemCount: 3,scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>InkWell(onTap: (){},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                              height: 56.h,
                              width: 56.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.r)
                              ),
                              child: Center(child: Image.asset("assets/images/shoe2.png"))),
                        )),

                    )),
                  SizedBox(height: 16.h,),
                  Row(

                    children: [
                      Text("Size",style: TextStyle(color:Color(0xFF1A2530),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                      Spacer(),
                      Text("EU",style: TextStyle(color:Color(0xFF1A2530),fontSize: 14.sp,fontWeight: FontWeight.w500),),
                      SizedBox(width: 12.h,),
                      Text("US",style: TextStyle(color:Color(0xFF707B81),fontSize: 14.sp,fontWeight: FontWeight.w500),),
                      SizedBox(width: 12.h,),
                      Text("UK",style: TextStyle(color:Color(0xFF707B81),fontSize: 14.sp,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  SizedBox(height: 16.h,),
                  SizedBox(
                      height: 60.h
                      ,child: ListView.builder(itemCount: 6,scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>InkWell(onTap: (){},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  color: index==2?Color(0xFF5B9EE1):Colors.white,
                                  shape: BoxShape.circle
                              ),
                              child: Center(child: Text("${index+38}",style: TextStyle(color:index==2?Colors.white:Color(0xFF707B81),fontSize: 16.sp,fontWeight: FontWeight.w400),))),
                        )),

                  )),




                ],
              ),
            ),
          )
          

        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal:20 ),
        height: 94.h,
        color: Color(0xFFf7f7f7),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Price",style: TextStyle(color: Color(0xFF707B81),fontSize:16.sp,fontWeight: FontWeight.w400 ),),
                SizedBox(height: 12.h,),
                Text("\$967.800",style: TextStyle(color: Color(0xFF1A2530),fontSize:20.sp,fontWeight: FontWeight.w500 ),),

              ],
            ),
            Spacer(),
            Container(
              height:54.h,
              width: 167.w,
              decoration: BoxDecoration(
                color: Color(0xFF5B9EE1),
                borderRadius: BorderRadius.circular(50.r)

              ),
              child: Center(child: Text("Add To Cart",style:TextStyle(color:Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w500))),
            )
          ],
        ),
      ),

    );
  }
}
