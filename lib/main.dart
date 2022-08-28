import 'package:ecommerce/auth/screens/Bottomnavigationbar/Bottomnavigation.dart';
import 'package:ecommerce/auth/screens/auth_screen.dart';
import 'package:ecommerce/auth/screens/home_screen/home_screen.dart';
import 'package:ecommerce/auth/services/auth_dervice.dart';
import 'package:ecommerce/providers/user_provider.dart';

import 'package:ecommerce/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthServices authServices = AuthServices();
  @override
  void initState() {
    // TODO: implement initState
    authServices.getUserData(context: context);
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amazon Clone',
        theme: ThemeData(primarySwatch: Colors.orange),
        onGenerateRoute: (settings) => genrateRoute(settings),
        home: Provider.of<UserProvider>(context).user.token.isNotEmpty
            ? const BottomNavigation()
            : authScreen());
  }
}
