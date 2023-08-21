import 'package:fake_call/Screens/splash_screen.dart';
import 'package:fake_call/Screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(

      designSize: const Size(393, 857),


      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,

          title: 'Flutter Demo',
          theme: ThemeData(

          ),
          home:SplashScreen(

          )
      ),
    );
  }
}




  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

