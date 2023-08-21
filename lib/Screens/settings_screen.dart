import 'package:fake_call/Screens/video_call_screen.dart';
import 'package:fake_call/Screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Settings_Screen extends StatelessWidget {
  const Settings_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0.h,
        title: Padding(
          padding:  EdgeInsets.only(left: 58.0.w),
          child: Text('Settings',style: TextStyle(
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
            padding:  EdgeInsets.only(top: 28.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.0.r)


                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white30,
                        elevation:0.5.h
                      ),

                      onPressed: (){}, child: Column(
                    children: [
                      Icon(Icons.home_outlined,color: Colors.orangeAccent,size:50.sp,),
                      Text('Home',style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp
                      ),)
                    ],
                  )),
                ),
                Container(
                  height: 110.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.0.r)


                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0.5.h,
                          backgroundColor: Colors.white30


                      ),
                      onPressed: (){}, child: Column(
                    children: [
                      Icon(Icons.thumb_up_sharp,color: Colors.orangeAccent,size:50.sp,),
                      Text('Home',style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp
                      ),)
                    ],
                  )),
                ),


              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 28.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.0.r)


                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0.5.h,
                          backgroundColor: Colors.white30

                      ),
                      onPressed: (){}, child: Column(
                    children: [
                      Icon(Icons.share_outlined,color: Colors.orangeAccent,size:50.sp,),
                      Text('Home',style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp
                      ),)
                    ],
                  )),
                ),
                Container(
                  height: 110.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.0.r)


                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white30,
                        elevation: 0.5.h
                      ),
                      onPressed: (){
                        myDialog(context);
                      }, child: Column(
                    children: [
                      Icon(Icons.exit_to_app,color: Colors.orangeAccent,size:50.sp,),
                      Text('Exit',style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp
                      ),)
                    ],
                  )),
                ),


              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 28.0.h),
            child: Container(
              height: 100.h,
              width: 265.w,

              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0.5.h,
                      backgroundColor: Colors.white30

                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoCall()));
                  }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.privacy_tip_outlined,color: Colors.orangeAccent,size:50.sp,),
                  Text('Privacy Policy',style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp
                  ),)
                ],
              )),

            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 28.0.h),
            child: Container(

              height: 250.h,
              width: 350.w,
              
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(11.r),
                border: Border.all(
                  color: Colors.deepOrangeAccent,

                )
              ),




              child: Center(child: Text('Place add here')),
            ),
          )


        ],
      ),
    );
    
  }
}
