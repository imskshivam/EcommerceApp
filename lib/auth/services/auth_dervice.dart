import 'dart:convert';

import 'package:ecommerce/auth/screens/home_screen/home_screen.dart';
import 'package:ecommerce/constants/error_handling.dart';
import 'package:ecommerce/constants/global_variable.dart';
import 'package:ecommerce/constants/utlis.dart';
import 'package:ecommerce/models/user.dart';
import 'package:ecommerce/providers/user_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthServices {
  // sign up user
  void signupUser(
      {required BuildContext context,
      required String email,
      required String password,
      required String name}) async {
    try {
      User user = User(
          id: "",
          name: name,
          email: email,
          password: password,
          address: "",
          type: "",
          token: "",
          phone: "");

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print(res.body);
      httErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(context, "Account created");
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void signinUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin'),
        body: jsonEncode({'email': email, 'password': password}),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print(res.body);
      httErrorHandle(
          response: res,
          context: context,
          onSuccess: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            Provider.of<UserProvider>(context, listen: false).setUser(res.body);
            await prefs.setString(
                'x-auth-token', jsonDecode(res.body)['token']);
            Navigator.pushNamedAndRemoveUntil(
              context,
              HomeScreen.routeName,
              (route) => false,
            );
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void getUserData({
    required BuildContext context,
  }) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('x-auth-token');

      if (token == null) {
        prefs.setString('x-auth-token', '');
      }

      var tokenRes = await http.post(
        Uri.parse('$uri/tokenIsValid'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': token!
        },
      );

      var Response = jsonDecode(tokenRes.body);

      if (Response == true) {
        http.Response userRes = await http.get(
          Uri.parse('$uri/'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'x-auth-token': token
          },
        );

        var userProvider = Provider.of<UserProvider>(context, listen: false);
        userProvider.setUser(userRes.body);
      }

      // http.Response res = await http.post(
      //   Uri.parse('$uri/api/signin'),
      //   body: jsonEncode({'email': email, 'password': password}),
      //   headers: <String, String>{
      //     'Content-Type': 'application/json; charset=UTF-8',
      //   },
      // );

      // httErrorHandle(
      //     response: res,
      //     context: context,
      //     onSuccess: () async {
      //       SharedPreferences prefs = await SharedPreferences.getInstance();
      //       Provider.of<UserProvider>(context, listen: false).setUser(res.body);
      //       await prefs.setString(
      //           'x-auth-token', jsonDecode(res.body)['token']);
      //       Navigator.pushNamedAndRemoveUntil(
      //         context,
      //         HomeScreen.routeName,
      //         (route) => false,
      //       );
      //     });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
