// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lottie/lottie.dart';

class OrderSummery extends StatefulWidget {
  const OrderSummery({Key? key}) : super(key: key);

  @override
  State<OrderSummery> createState() => _OrderSummeryState();
}

class _OrderSummeryState extends State<OrderSummery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_new_sharp),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  "Order Summery",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              dotsepration(
                text: "Order Placed on 26th july",
                iscompleted: true,
              ),
              dotsepration(
                text: "Order Placed on 26th july",
                iscompleted: true,
              ),
              dotsepration(
                text: "Processing Order and Assigning Delivery Agent",
                iscompleted: true,
              ),
              dotsepration(
                text: "Completed ",
                iscompleted: true,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.green, blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Delivery Address",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Home : Work & Other address",
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Text(
                                  "House no : No 2364 bn b bih bb b b b b b b  , 2nd Floor,Sector 18",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star_border_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Don't forget to rate ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Help us",
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w500),
                              ),
                              RatingBar.builder(
                                initialRating: 4.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: 25,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class dotsepration extends StatelessWidget {
  final String text;
  final bool iscompleted;
  const dotsepration({
    Key? key,
    required this.text,
    required this.iscompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                iscompleted
                    ? Container(
                        height: 20,
                        width: 20,
                        child: LottieBuilder.network(
                            "https://assets5.lottiefiles.com/packages/lf20_esxf7fph.json"))
                    : Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 280,
                    child: Text(
                      text,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: verticalsep(),
            )
          ],
        ),
      ),
    );
  }
}

class verticalsep extends StatelessWidget {
  const verticalsep({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      width: 1,
      height: 100,
    );
  }
}
