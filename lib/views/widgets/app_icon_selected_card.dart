import 'package:flutter/material.dart';

class AppIconSelectedCard extends StatelessWidget {
  int index;
  int selectedIndex;
  AppIconSelectedCard({required this.index,required this.selectedIndex,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return index==selectedIndex?Container(
      height: 44,
      width: 98,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff5B9EE1),
      ),
      child: Row(
        children: [
          SizedBox(width: 5,),
          InkWell(onTap: (){},child: CircleAvatar(radius:18 ,backgroundColor: Color(0xFFFFFFFF),child: Icon(Icons.grid_view_outlined,color: Color(0xFF28303F),))),
          SizedBox(width: 5,),
          Text("Nike",style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color: Colors.white ),)
        ],
      ),
    ):InkWell(onTap: (){},child: CircleAvatar(radius:18 ,backgroundColor: Color(0xFFFFFFFF),child: Icon(Icons.grid_view_outlined,color: Color(0xFF28303F),)));
  }
}
