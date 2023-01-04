import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rescue_ai/forgetpasswordpage.dart';
import 'package:rescue_ai/homepage.dart';
import 'package:rescue_ai/loginpage.dart';
import 'package:rescue_ai/loginview.dart';
import 'package:rescue_ai/otppage.dart';
import 'package:rescue_ai/recoverpassword.dart';
import 'package:rescue_ai/registerpage.dart';
import 'package:rescue_ai/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner: false,
     home: RegisterPage(),
     // home: OtpPage(),
     //  initialRoute: 'splashscreen',
     //  routes: {
     //    'splashscreen' : (context) =>   const SplashScreen(),
     //    'homepage' : (context) =>   const HomePage(),
     //    'loginview' : (context) =>   LoginView(),
     //    'registerpage' : (context) =>   RegisterPage(),
     //    'forgetpasswordpage' : (context) =>   ForgetPassword(),
     //    'otppage' : (context) =>   OtpPage(),
     //    'recoverpassword' : (context) =>   RecoverPassword(),
     //  },
    );
  }
}
