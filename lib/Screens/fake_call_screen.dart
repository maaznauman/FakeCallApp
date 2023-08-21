import 'package:fake_call/Screens/characters_screen.dart';
import 'package:fake_call/Screens/settings_screen.dart';
import 'package:fake_call/Screens/video_call_screen.dart';
import 'package:fake_call/Screens/voice_call_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FakeCall extends StatelessWidget {
  const FakeCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0.h,
        title: Padding(
          padding:  EdgeInsets.only(left: 58.0.w),
          child: Text('Fake Call',style: TextStyle(
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
          Padding(
            padding:  EdgeInsets.only(top: 68.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.all(4.0.sp),
                  child: InkWell(
                    onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => VideoCall(),));},
                    child: Stack(
                      children: [
                        Image.asset('Assets/images/videocall.png',height: 110.h,width: 110.w,),
                        Positioned(
                            top: 70.h,
                            left: 20.w,
                            child: Text('Video Call'))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(4.0.sp),
                  child: InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>VoiceCall(),));},
                    child: Stack(
                      children: [
                        Image.asset('Assets/images/voicecall.png',height: 110.h,width: 110.w,),
                        Positioned(
                            top: 70.h,
                            left: 20.w,
                            child: Text('Voice call'))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(4.0.sp),
                  child: InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>Settings_Screen() ,));},
                    child: Stack(
                      children: [
                        Image.asset('Assets/images/settings.png',height: 110.h,width: 110.w,),
                        Positioned(
                            top: 70.h,
                            left: 27.w,
                            child: Text('Settings'))
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 48.0.h,left: 20.w,right: 20.w),
            child: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Characters_Screen(),));},
              child: Stack(
                children: [
                  Image.asset('Assets/images/rectangle.png'),
                  Positioned(
                    top: 30.h,
                    left: 65.w,
                    child: Text('Select Characters',style: TextStyle(
                      fontSize: 20.sp
                    ),),
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 48.0),
            child: Container(
              height: 300.h,
              width: 350.w,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.r),
                border: Border.all(
                  color: Colors.deepOrangeAccent,
                  width: 2.w

                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
