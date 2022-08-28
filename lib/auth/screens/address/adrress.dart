import 'package:ecommerce/auth/screens/Payments/payment.dart';
import 'package:ecommerce/auth/screens/address/addresstemp.dart';
import 'package:ecommerce/auth/screens/address/stipsaddress.dart';
import 'package:ecommerce/auth/screens/cartscreen/linearcheckout.dart';
import 'package:ecommerce/auth/screens/cartscreen/stip.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Address extends StatefulWidget {
  final int track;
  const Address({Key? key, required this.track}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  List<String> address = ['', '', 'Home', 'Work'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.withOpacity(0.1),
        elevation: 0,
        title: Text(
          "MIINTO",
          style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            children: List.generate(address.length, (index) {
          return index == 0
              ? Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 10, right: 10, bottom: 10),
                  child: ordertracker_line(
                    num: widget.track,
                  ),
                )
              : index == 1
                  ? stipsaddress()
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Addresstemp(
                          label: address[index],
                          name: "Shivam karoria",
                          phoneno: "+91-83194 24570",
                          address:
                              "Room #1 - Dhabi Mall - 10th floor-Al Zohiyan Abu Dhabi- United Arab "),
                    );
        })),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () => _opensettings(context),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 2),
                  ))),
        ),
      ),
    );
  }

  void _opensettings(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return payment();
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position:
                animation.drive(Tween(begin: Offset(1, 0), end: Offset(0, 0))),
            child: child,
          );
        },
      ),
    );
  }
}
