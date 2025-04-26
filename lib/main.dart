import 'package:coffee_shop/home.dart';
import 'package:coffee_shop/signup.dart';
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
   
         child:  SignUp()
        //  Home(),
      ),
    );
  }
}