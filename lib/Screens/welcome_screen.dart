import 'package:fake_call/Screens/fake_call_screen.dart';
import 'package:fake_call/Screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.h,
        backgroundColor: Colors.deepOrangeAccent,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Welcome',
            style: TextStyle(fontSize: 30.sp),
          ),
        ),
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   icon:Image.asset('Assets/images/back.png')
        //   , onPressed: () {
        //   Navigator.pop(context);
        // },),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 18.0.h),
              child: Center(
                child: Container(
                  width: 130.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.circular(14.r),
                      border: Border.all()),
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 100.sp,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 130.w,
                            height: 168.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(11.r),
                                    bottomRight: Radius.circular(11.r)),
                                color: Colors.black),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14.r,
                                  child: Icon(
                                    Icons.call_rounded,
                                    size: 20.sp,
                                    color: Colors.green,
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 2.r,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 2.r,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 2.r,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 2.r,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14.r,
                                  child: Icon(
                                    Icons.call_rounded,
                                    size: 20.sp,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14.0.h),
              child: Text(
                'Fake Call',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
                width: 260.w,
                child: Text(
                  'Lorem ipsum dolor sit amet,Sed euismod suscipit velit, vel cursus leo convals a.consectetur adipiscing elite tuiple .',
                  textAlign: TextAlign.center,
                )),
            Padding(
              padding: EdgeInsets.only(top: 18.0.h),
              child: Container(
                height: 350.h,
                width: 350.w,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(11.r),
                    border: Border.all(
                      width: 2.w,
                      color: Colors.orange,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => FakeCall(),));},
                child: Container(
                    height: 80,
                    width: 340.w,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(21.r),
                      border: Border.all(
                        color: Colors.deepOrangeAccent,
                        width: 2.w

                      )
                    ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Continue',style: TextStyle(
                        fontSize: 25.sp
                      ),),
                      Image.asset('Assets/images/button.png',height: 45.h,)

                    ],

                  ),
    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
myDialog(BuildContext context){
  return showDialog(context: context, builder: (context) => AlertDialog(
    backgroundColor: Colors.black45,
    title: Text('Do you want to exit ',style: TextStyle(
      color: Colors.white,
    ),),
    elevation: 5.h,

    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(11.r)
    ),
    actions: [
      ElevatedButton(onPressed: (){}, child: Text('Yes')),
      ElevatedButton(onPressed: (){}, child: Text('No')),

    ],

  ),);
}