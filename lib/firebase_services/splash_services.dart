//import 'package:new_bmi_app/firebase_services/splash_services.dart';
import 'package:final_bmi_app/screens/bmi_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../screens/auth/login_screen.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }
}
