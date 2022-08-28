import 'package:ecommerce/auth/screens/Auth_screen/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animator/flutter_animator.dart';

class OtpScreen extends StatefulWidget {
  static const String routeName = '/Otp-screen';
  final String value;
  const OtpScreen({Key? key, required this.value}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isotplength = false;
  String otp = "";
  TextEditingController _num1 = new TextEditingController();
  TextEditingController _num2 = new TextEditingController();
  TextEditingController _num3 = new TextEditingController();
  TextEditingController _num4 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Verification code",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.9),
            ),
            Text(
              "We have sent the code to",
              style:
                  TextStyle(fontSize: 15, letterSpacing: 1, color: Colors.grey),
            ),
            Row(
              children: [
                Text(
                  widget.value,
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 1, color: Colors.black87),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Change phone number?",
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 1, color: Colors.orange),
                  ),
                ),
              ],
            ),
            Container(
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffeeeeee),
                                blurRadius: 10,
                                offset: Offset(0, 4))
                          ],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.orange.withOpacity(0.13))),
                      child: SizedBox(
                        height: 68,
                        width: 64,
                        child: TextField(
                          controller: _num1,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            setState(() {
                              otp = otp + _num1.text;
                            });

                            if (otp.length == 4) {
                              isotplength = true;
                            } else {
                              isotplength = false;
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffeeeeee),
                                blurRadius: 10,
                                offset: Offset(0, 4))
                          ],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.orange.withOpacity(0.13))),
                      child: SizedBox(
                        height: 68,
                        width: 64,
                        child: TextField(
                          controller: _num2,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            setState(() {
                              otp = otp + _num2.text;
                            });
                            if (otp.length == 4) {
                              isotplength = true;
                            } else {
                              isotplength = false;
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffeeeeee),
                                blurRadius: 10,
                                offset: Offset(0, 4))
                          ],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.orange.withOpacity(0.13))),
                      child: SizedBox(
                        height: 68,
                        width: 64,
                        child: TextField(
                          controller: _num3,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            setState(() {
                              otp = otp + _num3.text;
                            });
                            if (otp.length == 4) {
                              isotplength = true;
                            } else {
                              isotplength = false;
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffeeeeee),
                                blurRadius: 10,
                                offset: Offset(0, 4))
                          ],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.orange.withOpacity(0.13))),
                      child: SizedBox(
                        height: 68,
                        width: 64,
                        child: TextField(
                          controller: _num4,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            print(value);
                            setState(() {
                              otp = otp + _num4.text;
                            });
                            if (otp.length == 4) {
                              isotplength = true;
                            } else {
                              isotplength = false;
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Resend code after",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 1,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FadeInDown(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.orange.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: Text(
                      "Resend",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                FadeInDown(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, signinScreen.routeName);
                    },
                    color: isotplength ? Colors.orange : Colors.orange.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: Text(
                      "Confirm",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
