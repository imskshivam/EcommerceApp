import 'package:ecommerce/auth/screens/address/adrress.dart';
import 'package:ecommerce/auth/screens/cartscreen/linearcheckout.dart';
import 'package:ecommerce/auth/screens/cartscreen/stip.dart';
import 'package:ecommerce/auth/screens/cartscreen/subtotal.dart';
import 'package:ecommerce/auth/screens/cartscreen/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartscreen extends StatefulWidget {
  final int track;
  const Cartscreen({Key? key, required this.track}) : super(key: key);

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  bool isLoading = false;
  List<String> values = [
    ""
        'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'six',
    'seven',
    ''
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.withOpacity(0.1),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "CART",
          style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
          )
        ],
      ),
      body: Container(
          child: ListView.separated(
        itemCount: values.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return index == 0
              ? Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: ordertracker_line(
                    num: widget.track,
                  ),
                )
              : index == 1
                  ? stips()
                  : index < values.length - 1
                      ? items()
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: subtotal(),
                        );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 0.1,
            endIndent: 20,
            indent: 20,
          );
        },
      )),
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
                  onPressed: () {
                    setState(() {
                      isLoading = true;
                    });
                    Future.delayed(Duration(seconds: 2), () {
                      setState(() {
                        isLoading = false;
                      });

                      _opensettings(context);
                    });
                  },
                  child: isLoading
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2.0,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Loading",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  letterSpacing: 2),
                            )
                          ],
                        )
                      : Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              letterSpacing: 2),
                        ))),
        ),
      ),
    );
  }

  Column Itemslide(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width -
                MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 1.0),
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Center(
                        child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/Apple-iPhone-13-featured-image-packshot-review-removebg-preview.png?alt=media&token=83c61b55-d504-4c0e-bdec-d46fc8800c0a"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        constraints: BoxConstraints(maxHeight: 45),
                        child: Text(
                          "Iphone 12  ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1,
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 200,
                        constraints: BoxConstraints(maxHeight: 45),
                        child: Text(
                          "64 Gb ,4gb ram,",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15,
                            letterSpacing: 1,
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                " DK 4.56",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                " DK 4.56",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationThickness: 2.85,
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                child: Image.network(
                                    "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/minus.png?alt=media&token=984b62b0-ce04-4104-bd58-ebc0131e5ab3"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "1",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                child: Image.network(
                                    "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/plus.png?alt=media&token=bb42c165-8d50-48cc-89bf-80abfddbac74"),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _opensettings(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return Address(track: 1);
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
