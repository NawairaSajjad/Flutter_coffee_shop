import 'package:coffee_shop/refactor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

// optional, only if using provided badge style
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';

// optional, only if using "MotionTabBarController" to programmatically change the tab
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// class _HomeState extends State<Home> {
class _HomeState extends State<Home> with TickerProviderStateMixin {
    // TabController _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    
    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
      vsync: this ,
    );
  }

  @override
  void dispose() {
    super.dispose();

    // _tabController.dispose();
    _motionTabBarController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Icon(Icons.dashboard,color: Colors.grey.shade400,size: 32.sp,),
                  Spacer(),
                  CircleAvatar(
                    radius: 23.r,
                    backgroundImage: AssetImage('lib/asset/imagee.png'),
                  ),             
                ],),
                 12.verticalSpace,
                  Text('Find the best \ncoffee for you !!',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  25.verticalSpace,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child:
                    Row(children: [
                      buildText('Expresso'),
                      13.horizontalSpace,
                      buildText('Cappuccino'),
                       13.horizontalSpace,
                      buildText('Latte'),
                         13.horizontalSpace,
                      buildText('Americano'),
                        13.horizontalSpace,
                      buildText('Flat White')
          
                    ],)),
                    40.verticalSpace,
                    Row(
                      children: [
                     buildCoffeeCard('lib/asset/coffee.png', r'$450.0', 'Cappuccino', 'Rich espresso with thick, frothy foam.'),
                        15.horizontalSpace,
                          buildCoffeeCard('lib/asset/caramel.png',r'$500.0', 'Caramel Latte', 'Smooth coffee with creamy milk.'),
                      ],
                    ),
                    30.verticalSpace,
                    Text('Special for you',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp
                    ),),
                    8.verticalSpace,
                    ListView.builder(
                       shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context,index){
           return buildSuggestionCard(
            'lib/asset/suggest.jpg',
             'Dark Coffee', 
             'complementary brownie');
                    })
              ],
            ),
          ),
        ),
        bottomNavigationBar: MotionTabBar(
         controller: _motionTabBarController,
        labels: const ["Home", "Search", "Favorite", "Profile"],
          icons: const [Icons.home, Icons.search, Icons.favorite, Icons.person],
        initialSelectedTab: "Search",
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w500,
  ), // <<< close TextStyle properly here
        tabIconColor: Colors.white,
        tabIconSize: 28.0,
        tabIconSelectedColor: Colors.white,
          tabSelectedColor: Colors.black,
        tabBarColor: Color.fromARGB(255, 212, 110, 43),
      onTabItemSelected: (int value) {
      setState(() {
          _motionTabBarController!.index = value;
         });
        },
          ),

      ),
   

    );

  }
}