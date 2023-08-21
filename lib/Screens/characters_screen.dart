import 'package:fake_call/Screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Characters_Screen extends StatelessWidget {
  const Characters_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Padding(
          padding:  EdgeInsets.only(left: 58.0.w),
          child: Text('Characters',style: TextStyle(
            fontSize: 30.sp
          ),),
        ),
        leading: IconButton(
          icon:Image.asset('Assets/images/back.png')
        , onPressed: () { 
            Navigator.pop(context);
        },),

      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 200.h,
              width: 350.w,

              child: Padding(
                padding:  EdgeInsets.only(top: 28.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.r),
                        border: Border.all()
                      ),
                    ),
                    Container(
                      height: 200.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.r),
                          border: Border.all(
                            width: 4.w,
                            color: Colors.deepOrangeAccent
                          )
                      ),
                    )
                  ],



        ),

            ),
          )
          ),
          Padding(
            padding:  EdgeInsets.only(top:8.0.h),
            child: Container(
              height: 50.h,
              width: 350.w,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100.w,
                    decoration: BoxDecoration(

                    ),
                    child: ElevatedButton(onPressed: (){}, child: Text('Wife'),style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent
                    ),),
                  ),
                  Container(
                      width:100.w,
                      child: ElevatedButton(onPressed: (){}, child: Text('Brother'),style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrangeAccent
                      ),)),
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 11.0.h),
            child: Container(
              height: 230.h,
              width: 350.w,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                color: Colors.deepOrangeAccent,
                border: Border.all(
                  
                )
              ),

              child: Center(
                child: Text('Adds',style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                ),),
              ),
            ),
          ),
          Center(
              child: Container(
                height: 200.h,
                width: 350.w,
                
                child: Padding(
                  padding:  EdgeInsets.only(top: 28.0),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 200.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.r),
                            border: Border.all()
                        ),
                      ),
                      Container(
                        height: 200.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.r),
                            border: Border.all(

                            )
                        ),
                      )
                    ],



                  ),

                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top:8.0.h),
            child: Container(
              height: 50.h,
              width: 350.w,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100.w,
                    decoration: BoxDecoration(

                    ),
                    child: ElevatedButton(onPressed: (){}, child: Text('Wife'),style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrangeAccent
                    ),),
                  ),
                  Container(
                      width:100.w,
                      child: ElevatedButton(onPressed: (){} ,child: Text('Husband'),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent
                      ),)),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
