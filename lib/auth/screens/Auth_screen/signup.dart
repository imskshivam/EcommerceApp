import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

import '../../services/auth_dervice.dart';

class signUpScreen extends StatefulWidget {
  static const String routeName = '/signUp-screen';
  const signUpScreen({Key? key}) : super(key: key);

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final AuthServices authServices = AuthServices();

  void signUpuser() {
    authServices.signupUser(
        context: context,
        email: emailcontroller.text,
        password: passwordcontroller.text,
        name: namecontroller.text);

    emailcontroller.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  width: 280,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 50,
                ),
                FadeInDown(
                  child: Text(
                    "Register here ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FadeInDown(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffeeeeee),
                              blurRadius: 10,
                              offset: Offset(0, 4))
                        ],
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.13))),
                    child: Stack(
                      children: [
                        FadeInDown(
                          child: Container(
                            margin: EdgeInsets.only(left: 12),
                            child: TextField(
                              controller: namecontroller,
                              style:
                                  TextStyle(fontSize: 15, letterSpacing: 1.5),
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.person,
                                  ),
                                  hintText: "Name",
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeInDown(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffeeeeee),
                              blurRadius: 10,
                              offset: Offset(0, 4))
                        ],
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.13))),
                    child: Stack(
                      children: [
                        FadeInDown(
                          child: Container(
                            margin: EdgeInsets.only(left: 12),
                            child: TextField(
                              controller: emailcontroller,
                              style:
                                  TextStyle(fontSize: 15, letterSpacing: 1.5),
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.person,
                                  ),
                                  hintText: "MI id",
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeInDown(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffeeeeee),
                              blurRadius: 10,
                              offset: Offset(0, 4))
                        ],
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.13))),
                    child: Stack(
                      children: [
                        FadeInDown(
                          child: Container(
                            margin: EdgeInsets.only(left: 12),
                            child: TextField(
                              controller: passwordcontroller,
                              style:
                                  TextStyle(fontSize: 15, letterSpacing: 1.5),
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.password),
                                  hintText: "Password",
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                FadeInDown(
                  child: MaterialButton(
                    onPressed: () {
                      signUpuser();
                    },
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeInDown(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      TextButton(onPressed: () {}, child: Text("Log in"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
