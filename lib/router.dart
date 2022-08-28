import 'package:ecommerce/auth/screens/Auth_screen/signin.dart';
import 'package:ecommerce/auth/screens/Auth_screen/signup.dart';
import 'package:ecommerce/auth/screens/Bottomnavigationbar/Bottomnavigation.dart';
import 'package:ecommerce/auth/screens/auth_screen.dart';
import 'package:ecommerce/auth/screens/home_screen/home_screen.dart';
import 'package:ecommerce/auth/screens/otp_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> genrateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case authScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const authScreen(),
      );

    case OtpScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const OtpScreen(value: "8319424570"),
      );
    case signinScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const signinScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );

    case BottomNavigation.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomNavigation(),
      );

    case signUpScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const signUpScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen does not exist"),
          ),
        ),
      );
  }
}
