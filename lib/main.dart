import 'package:coffee_shop/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return 
       MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.black,
        home:ScreenUtilInit(
        designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
    //    child:  SafeArea(
    //   child: Scaffold(
    //     body: Padding(
    //       padding: const EdgeInsets.all(15.0),
    //       child: Column(
    //         children: [
    //           Row(children: [
    //             Icon(Icons.menu),
    //             Spacer(),
    //             CircleAvatar(
    //               radius: 23,
    //               backgroundImage:  AssetImage('lib/asset/image.png'),
    //             ),             
    //           ],),
    //             10.verticalSpace,
    //             Text('Find the best \ncoffee for you',
    //             style: TextStyle(
    //               fontSize: 25,
    //               fontWeight: FontWeight.bold,
    //             ),),
    //             10.verticalSpace,
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
         child:  Home(),
      ),
    );
  }
}