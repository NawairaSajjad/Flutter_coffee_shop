import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gif/gif.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            
            children: [
            60.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
               CircleAvatar(
                radius: 45,
                 backgroundImage: AssetImage('lib/asset/image.png'),
                 backgroundColor: Colors.black,
                 ),
                 Text('Cafe \n Nostalgia',
                 style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold
                 ),),
          
              ],),
              120.verticalSpace,
              TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter email',
              hintText: 'John Doe',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email_outlined),
            ),
              ),
              9.verticalSpace,
           TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Enter password',
              hintText: 'John Doe',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.password_outlined),
              
            ),
              ),
             
               70.verticalSpace,
              Container(
                height: 45.h,
                width: 315.w,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 212, 110, 43),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(child: Text('Login',
                style:
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23.sp,
                ) ,)),
              ),
               50.verticalSpace,
               Text('Forget Password', style: TextStyle(color: Colors.white)),
              5.verticalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account? ', style: TextStyle(color: Colors.white),),
                  Text('SignUp', style: TextStyle(color: Colors.white)),
                ],
              )
          
            ],
          ),
        ),
      ),
    );
  }
}