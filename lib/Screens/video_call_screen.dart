import 'package:fake_call/Screens/voice_call_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

int template = 0;
int duration=0;


class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0.h,
        title: Padding(
          padding: EdgeInsets.only(left: 58.0.w),
          child: Text(
            'Video Call',
            style: TextStyle(fontSize: 30.sp),
          ),
        ),
        leading: IconButton(
          icon: Image.asset('Assets/images/back.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 38.0.h, left: 30.w, bottom: 10.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Template',
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
          ),
          Container(
            height: 70.h,
            width: 370.w,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(32.r),
              //border: Border.all()
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 8.0.w, right: 8.0.w, top: 8.h, bottom: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(

                      child: Image.asset('Assets/images/back1.png'),
                    onTap: (){
                        setState(() {
                          if(template>=1)
                          template=template-1;
                        });
                    },


                  ),
                  Spacer(),
                  if(template==0)

                  Text(
                    'Whatsapp',
                    style: TextStyle(fontSize: 20.sp),
                  )
                  else if(template == 1)

                    Text('Facebook',style: TextStyle(fontSize: 20.sp),)

                  else if(template==2)
                    Text('Twitter',style: TextStyle(fontSize: 20.sp),)

                    else if(template==3)
                        Text('Instagram',style: TextStyle(fontSize: 20.sp),),



                  Spacer(),
                  InkWell(
                      child: Image.asset('Assets/images/forward.png'),
                  onTap: (){
                        setState(() {
                          if(template<3)
                          template=template+1;
                        });
                  },)
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 38.0, left: 30.w, bottom: 10.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Set Timer:',
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
          ),
          Container(
            height: 70.h,
            width: 370.w,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(32.r),
              //border: Border.all()
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 8.0.w, right: 8.0.w, top: 8.h, bottom: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      child: Image.asset('Assets/images/minus.png'),
                  onTap: (){
                        setState(() {
                          if(duration>=1)
                            duration=duration-1;

                        });
                  },),
                  Spacer(),
                  if(duration>=0 && duration<=10)
                    Text('$duration',style: TextStyle(fontSize: 20.sp),
                  ),
                  Spacer(),
                  InkWell(
                      child: Image.asset('Assets/images/plus.png'),
                    onTap: (){
                        setState(() {
                          if(duration<=10)
                            duration=duration+1;
                        });

                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 18.0.w, top: 20.h),
            child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'Assets/images/vector.png',
                  height: 80.h,
                  width: 80.w,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 38.0.h),
            child: Container(
              height: 300.h,
              width: 350.w,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: Colors.orangeAccent, width: 2.w)),
            ),
          )
        ],
      ),
    );
  }
}
