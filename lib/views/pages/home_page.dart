import 'package:assignment_task/views/widgets/app_bottom_navigatonbar.dart';
import 'package:assignment_task/views/widgets/app_custom_appbar.dart';
import 'package:assignment_task/views/widgets/app_custom_new_arv_card.dart';
import 'package:assignment_task/views/widgets/app_custom_product_card.dart';
import 'package:assignment_task/views/widgets/app_custom_searchbar.dart';
import 'package:assignment_task/views/widgets/app_icon_selected_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatefulWidget {
  static const String routeName="/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController=TextEditingController();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7f7f7),
      appBar: AppCustomAppBar(
        onPressed:(){


        } ,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 20.h,),
            UnconstrainedBox(child: AppCustomSearch(controller: searchController,)),
            SizedBox(height: 30.h,),
            SizedBox(height:50.h ,width: double.infinity,
              child: ListView.builder(itemCount: 10,shrinkWrap: true,scrollDirection: Axis.horizontal,itemBuilder: (context, index) =>Padding(
                padding:EdgeInsets.symmetric(horizontal: 8.w),
                child: AppIconSelectedCard(index:index,selectedIndex: 1,),
              ),)
            ),
            SizedBox(height: 24.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Shoes",style: TextStyle(color:Color(0xFF1A2530),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                Text("See all",style: TextStyle(color:Color(0xFF5B9EE1),fontSize: 16.sp,fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 16.h,),
            SizedBox(height:205.h ,width: double.infinity,
                child: Center(
                  child: ListView.builder(itemCount: 3,shrinkWrap: true,scrollDirection: Axis.horizontal,itemBuilder: (context, index) =>Padding(
                    padding:EdgeInsets.symmetric(horizontal: 6.w),
                    child: AppCustomProductCard(),
                  ),),
                )
            ),
            SizedBox(height: 24.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New Arrivals",style: TextStyle(color:Color(0xFF1A2530),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                Text("See all",style: TextStyle(color:Color(0xFF5B9EE1),fontSize: 16.sp,fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 12.h,),
            AppCustomNewArrCard(),
            SizedBox(height: 200.h,),




          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(context,true,1),
    );
  }
}
