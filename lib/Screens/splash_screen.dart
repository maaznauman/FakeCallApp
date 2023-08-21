import 'package:fake_call/Screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fake_call/Screens/characters_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double screenWidth = 0;
  double screenHeight = 0;

  void getScreenSize(BuildContext context) {
    setState(() {
      screenWidth = MediaQuery.of(context).size.width;
      screenHeight = MediaQuery.of(context).size.height;
    });
  }

  @override
  Widget build(BuildContext context) {
    getScreenSize(context);
    print('width = ${MediaQuery.of(context).size.width}');
    print('Height = ${MediaQuery.of(context).size.height}');
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              'Assets/images/white_rectangle.png',
              fit: BoxFit.cover,
            )),
            Positioned.fill(
                //decoration: BoxDecoration(border: Border.all(width: 5)),
                child: Image.asset(
              'Assets/images/orange_background.png',
              fit: BoxFit.cover,
            )),
            Padding(
              padding: EdgeInsets.only(top: 15.0.h),
              child: Center(
                child: Container(
                    child: Image.asset(
                  'Assets/images/splash_bubble.png',
                  fit: BoxFit.fill,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 408.h),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(11.r),
                      border: Border.all()),
                  height: 200.h,
                  width: 180.w,
                  child: Expanded(
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          size: 100.sp, // Adjust the size of the icon
                          color: Colors.white, // Adjust the color of the icon
                        ),
                        Expanded(
                          child: Padding(
                            padding:  EdgeInsets.only(top: 15.0.h),
                            child: Container(

                              // height:screenWidth < 400.w ? 100 : 155,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(11.r),bottomLeft: Radius.circular(11.r)),
                                color: Colors.black87,
                                border: Border.all()
                              ),
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20.r,
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.call_rounded,
                                        color: Colors.green,

                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 8.0.w),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 5.r,
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 6.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 5.r,
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 6.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.red,
                                        radius: 5.r,
                                      ),
                                    ), Padding(
                                      padding:  EdgeInsets.only(left: 6.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.red,
                                        radius: 5.r,
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 8.0.w),
                                      child: CircleAvatar(
                                        radius: 20.r,
                                        backgroundColor: Colors.white,
                                        child: Icon(Icons.call_rounded,
                                          color: Colors.red,

                                        ),
                                      ),
                                    ),




                                  ],
                                ),
                              ),

                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 500.h,
              left: 130.w,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen ()),);
              }, child: Text('Welcome screen')),
            )
          ],


        ),
      ),
    );
  }
}
