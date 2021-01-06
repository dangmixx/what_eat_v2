import 'package:flutter/material.dart';
import 'package:what_eat_v2/screens/cart/cart_screen.dart';
import 'package:what_eat_v2/screens/completed_profile/complete_profile_screen.dart';
import 'package:what_eat_v2/screens/details/details_product.dart';
import 'package:what_eat_v2/screens/forgot_password/forgot_password_screen.dart';
import 'package:what_eat_v2/screens/home/home_screen.dart';
import 'package:what_eat_v2/screens/login_sucess/login_sucess_screen.dart';
import 'package:what_eat_v2/screens/otp/otp_screen.dart';
import 'package:what_eat_v2/screens/register/register_screen.dart';
import 'package:what_eat_v2/screens/sign_in/sign-in_screen.dart';
import 'package:what_eat_v2/screens/sign_up/sign_up_screen.dart';
import 'package:what_eat_v2/screens/splash/splash_screen.dart';

// declare All Routes in app

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  LoginSucessScreen.routeName: (context) => LoginSucessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  DetailsProductScreen.routeName: (context) => DetailsProductScreen(),
  CartScreen.routeName: (context) => CartScreen()
};
