import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/auth/screens/Products/showallproducts.dart';
import 'package:ecommerce/auth/screens/cartscreen/cartscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Productdetailscreen extends StatefulWidget {
  const Productdetailscreen({Key? key}) : super(key: key);

  @override
  State<Productdetailscreen> createState() => _ProductdetailscreenState();
}

class _ProductdetailscreenState extends State<Productdetailscreen> {
  PageController pageController = PageController(viewportFraction: 1.0);
  var page = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        page = pageController.page!;
        print(page.toString());
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.withOpacity(0.1),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "MIINTO",
          style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 20)),
        ),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new_sharp)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Lottie.network(
                "https://assets8.lottiefiles.com/private_files/lf30_38jdEC.json"),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Cartscreen(
                            track: 0,
                          )));
            },
            icon: const Icon(Icons.shopping_bag_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: PageView.builder(
                  controller: pageController,
                  itemCount: 5,
                  itemBuilder: (context, position) {
                    return Container(
                      child: Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/Apple-iPhone-13-featured-image-packshot-review-removebg-preview.png?alt=media&token=83c61b55-d504-4c0e-bdec-d46fc8800c0a"),
                    );
                  }),
              // child: Image.network(
              //     "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/Apple-iPhone-13-featured-image-packshot-review-removebg-preview.png?alt=media&token=83c61b55-d504-4c0e-bdec-d46fc8800c0a"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              color: Colors.grey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (page > 0 && page <= 4) {
                            page = page - 1;
                          }
                        });
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                  ),
                  DotsIndicator(
                    dotsCount: 5,
                    position: page,
                    decorator: DotsDecorator(
                      size: const Size.square(7.0),
                      activeSize: const Size(15.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (page >= 0 && page < 4) {
                            page = page + 1;
                          }
                        });
                      },
                      icon: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 17, right: 17, top: 17, bottom: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Puma",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          height: 25,
                          width: 50,
                          color: Colors.orange[300],
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "30%",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "Sneaker Model One",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: const [
                        Text(
                          "4.425 DKK",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "4.425 DKK",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 2.85),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Select Variant",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 35,
                                width: 70,
                                color: Colors.blue[50],
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.colorize_rounded,
                                        color: Colors.red,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text("Blue"),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.memory,
                                        color: Colors.red,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text("4 Gb"),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FadeInDown(
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30),
                            child: Text(
                              "Buy Now     ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        FadeInDown(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Allproducts()));
                            },
                            color: Colors.orange.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30),
                            child: Text(
                              "Add To cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.fire_truck_rounded,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Delivery by 20 Aug, Sunday",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
                          border: Border.all(
                              width: 1, color: Colors.grey.withOpacity(0.4))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.repeat_rounded,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "30 Days return policy ",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Colors.grey.withOpacity(0.4))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.home_filled,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Text(
                              "UNITECH CYBER PARK, Unit 007 - 008, GF, Tower A, Sector 39, Gurugram, Haryana 122003",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Colors.grey.withOpacity(0.4))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        child: Row(
                          children: [
                            Icon(
                              Icons.reviews_outlined,
                              size: 20,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Reviews ",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Colors.grey.withOpacity(0.4))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.featured_play_list,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "HighLight ",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Colors.grey.withOpacity(0.4))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
