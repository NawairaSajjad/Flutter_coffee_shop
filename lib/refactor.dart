import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildText(String description){
  return(
    Text(description,
    style: TextStyle(
      fontSize: 16.sp,
      color: Color.fromARGB(255, 212, 110, 43)

    ),)
  );
}

Widget buildCoffeeCard(String imagePath,String price, String name ,String description){
  return(
    Container(
      height: 220.h,
      width: 155.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: Colors.grey.shade400,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            height: 90.h,
            width: 135.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r)
            ),
            child:  ClipRRect(
    borderRadius: BorderRadius.circular(10.r),
    child: Image.asset(
      imagePath,
      fit: BoxFit.cover,
    ),
  ),
          ),
          8.verticalSpace,
          Text(name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),),
        
          Text(description,
          style: TextStyle(
            color: Colors.white,
            fontSize: 11.sp,
          ),),
          15.verticalSpace,
          Row(children: [
            Text(price,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16.sp
            ),),
            Spacer(),
            Container(
              width: 45.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color:Color.fromARGB(255, 212, 110, 43)
              ),
              child: Icon(Icons.add,size: 25,color: Colors.white,),
            )
          ],)
        ],),
      ),
    )
  );

}
// Color(0xFFB05E27)
