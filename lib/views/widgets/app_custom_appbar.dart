


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppCustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  IconData? leading;
  String? ending;
  String? middle;
  bool? ab;
  Function()? onPressed;
  Function()? ontap;
  String? profilePic;

  AppCustomAppBar({this.leading,this.middle,this.ending,this.ab,this.onPressed,this.profilePic,this.ontap,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFFf7f7f7),
        statusBarIconBrightness: Brightness.dark
    ));
    return SafeArea(
      child: Container(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(width: 20,),
            InkWell(onTap: onPressed??(){
              Navigator.pop(context);
            },child: CircleAvatar(radius:20 ,backgroundColor: Color(0xFFFFFFFF),child: Center(child: Icon(leading??Icons.grid_view_outlined,color: Color(0xFF28303F),)))),
            SizedBox(width: 56,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ab==true?SizedBox():Text(ending??"Store location",style: TextStyle(fontSize: 12,color: Color(0xFF707B81)),),
                Row(
                  children: [
                    ab==true?SizedBox(width: 40,):Icon(Icons.location_on_outlined,size: 14,color: Color(0xFFf05e54),),
                    Text(middle??"Mondolibug, Sylhet",style: TextStyle(fontSize: 14,color: Color(0xFF1A2530),fontWeight: FontWeight.w500),),
                  ],
                ),
              ],
            ),
            Spacer(),
            InkWell(onTap: onPressed,child: Stack(
              clipBehavior: Clip.antiAlias,
              children: [
                CircleAvatar(radius:20 ,backgroundColor: Color(0xFFFFFFFF),child: Icon(Icons.shopping_bag_outlined,color: Color(0xFF28303F),)),
                Positioned(right: -1,top: 2,child: Icon(Icons.circle,size: 10,color: Color(0xFFf05e54),))

              ],
            )),
            SizedBox(width: 20,),




          ],
        ),
      )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity,100);
}