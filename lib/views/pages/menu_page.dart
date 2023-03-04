import 'package:assignment_task/views/pages/home_page.dart';
import 'package:assignment_task/views/widgets/app_custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';



class MenuPage extends StatefulWidget {
  static const String routeName="menu";
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    _pages=[
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: "Profile", baseStyle:  TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500), selectedStyle: TextStyle(),

      ), HomePage()),
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: "Home Page", baseStyle:  TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500), selectedStyle: TextStyle(),

      ), HomePage()),

      ScreenHiddenDrawer(ItemHiddenMenu(
        name: "My Cart", baseStyle:  TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500), selectedStyle: TextStyle(),

      ), HomePage()),


      ScreenHiddenDrawer(ItemHiddenMenu(
        name: "Favorite", baseStyle:  TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500), selectedStyle: TextStyle(),

      ), HomePage()),


      ScreenHiddenDrawer(ItemHiddenMenu(
        name: "Orders", baseStyle:  TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500), selectedStyle: TextStyle(),

      ), HomePage()),

      ScreenHiddenDrawer(ItemHiddenMenu(
        name: "Notifications", baseStyle:  TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500), selectedStyle: TextStyle(),

      ), HomePage()),

      ScreenHiddenDrawer(ItemHiddenMenu(
        name: "Sign Out", baseStyle:  TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500), selectedStyle: TextStyle(),

      ), HomePage()),



    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        enableShadowItensMenu: false,
        screens: _pages,
        initPositionSelected: 0,
        elevationAppBar: 0,
        backgroundColorAppBar: Color(0xFFf7f7f7),
        leadingAppBar: CircleAvatar(radius:20 ,backgroundColor: Color(0xFFFFFFFF),child: Center(child: Icon(Icons.grid_view_outlined,color: Color(0xFF28303F),))),
        tittleAppBar:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Store location",style: TextStyle(fontSize: 12,color: Color(0xFF707B81)),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_outlined,size: 14,color: Color(0xFFf05e54),),
                Text("Mondolibug, Sylhet",style: TextStyle(fontSize: 14,color: Color(0xFF1A2530),fontWeight: FontWeight.w500),),
              ],
            ),
          ],
        ),
        actionsAppBar: [
          Center(
            child: Stack(
              clipBehavior: Clip.antiAlias,
              children: [
                CircleAvatar(radius:20 ,backgroundColor: Color(0xFFFFFFFF),child: Icon(Icons.shopping_bag_outlined,color: Color(0xFF28303F),)),
                Positioned(right: -1,top: 2,child: Icon(Icons.circle,size: 10,color: Color(0xFFf05e54),))

              ],
            ),
          ),
          SizedBox(width: 20,),
        ],
        slidePercent: 60,
        contentCornerRadius: 20,
        backgroundColorMenu: Color(0xFF1A2530));

  }
}
