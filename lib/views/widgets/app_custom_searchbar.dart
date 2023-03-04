import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCustomSearch extends StatelessWidget {
  TextEditingController controller;
   AppCustomSearch({required this.controller,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white
      ),
      child: Row(
        children: [
          Expanded(child: Icon(Icons.search)),
          Expanded(flex: 4,child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: "Looking for shoes",
              hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF707B81)),
              border: InputBorder.none,
            ),
          )),

        ],
      ),
    );
  }
}
