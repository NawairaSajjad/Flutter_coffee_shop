import 'package:coffee_shop/refactor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
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
                  backgroundImage: AssetImage('lib/asset/image.png'),
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
                  )
            ],
          ),
        ),
      ),
    );
  }
}