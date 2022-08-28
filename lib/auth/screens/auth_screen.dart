import 'package:ecommerce/auth/screens/otp_screen.dart';
import 'package:ecommerce/auth/services/auth_dervice.dart';
import 'package:ecommerce/auth/widgets/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class authScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const authScreen({Key? key}) : super(key: key);

  @override
  State<authScreen> createState() => _authScreenState();
}

class _authScreenState extends State<authScreen> {
  TextEditingController phonecontroller = TextEditingController();
  final AuthServices authServices = AuthServices();
  String value = "";

  // void signUpuser() {
  //   authServices.signupUser(context: context, phone: phonecontroller.text);
  // }

  Future auth() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });

    Navigator.pushNamed(context, OtpScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.network(
                    "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    width: 280,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                FadeInDown(
                  child: Text(
                    "REGISTER",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                FadeInDown(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Text(
                      "Enter your phone number to continue, we will send you OTP to verify.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FadeInDown(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                        Inputfield(),
                        Positioned(
                          left: 90,
                          top: 8,
                          bottom: 8,
                          child: Container(
                            height: 20,
                            width: 1,
                            color: Colors.black.withOpacity(0.13),
                          ),
                        ),
                        FadeInDown(
                          child: Container(
                            margin: EdgeInsets.only(left: 120),
                            child: TextField(
                              controller: phonecontroller,
                              maxLength: 10,
                              keyboardType: TextInputType.number,
                              style:
                                  TextStyle(fontSize: 17, letterSpacing: 1.5),
                              decoration: InputDecoration(
                                  hintText: "Phone number",
                                  border: InputBorder.none),
                            ),
                          ),
                        )
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
                      // value = _textEditingController.text;
                      // if (value.length != 10) {}
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => OtpScreen(
                      //           value: value,
                      //         )));

                      // signUpuser();
                      auth();
                    },
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: Text(
                      "Request OTP",
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
                        "Already have and account?",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      TextButton(onPressed: () {}, child: Text("Login"))
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
