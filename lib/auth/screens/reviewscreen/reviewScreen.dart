// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/auth/screens/reviewscreen/review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  bool ismore = true;
  List<double> ratings = [
    0.1,
    0.2,
    0.3,
    0.5,
    0.7,
    0.8,
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Reviews"),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.grey[200],
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: "4.5",
                              style: TextStyle(
                                fontSize: 48.0,
                              ),
                            ),
                            TextSpan(
                                text: "/5",
                                style: TextStyle(
                                    fontSize: 24.0, color: Colors.grey[700]))
                          ]),
                        ),
                        RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: 25,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "1023 Reviews",
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        reverse: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Text("${index + 1}"),
                              SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width / 2.8,
                                animation: true,
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                animationDuration: 2500,
                                lineHeight: 6.0,
                                progressColor: Colors.amber,
                                percent: ratings[index],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.only(bottom: 8, top: 8),
                  itemBuilder: (context, index) {
                    return ReviewUi(
                      isless: ismore,
                      ontap: () => setState(() {
                        ismore = !ismore;
                      }),
                      rating: 3.5,
                      comments:
                          "Lorem ipsum Comments Lorem ipsum Comments Lorem ipsum Comments Lorem ipsum Comments Lorem ipsum Comments Lorem ipsum Comments Lorem ipsum Comments Lorem ipsum Comments Comments Lorem ipsum Comments Comments Lorem ipsum CommentsComments Lorem ipsum Comments",
                      date: "06 jan 2021",
                      name: "shivam karoria",
                      image:
                          "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/images%2F1660469043164477%2Fsfbjbrj?alt=media&token=0e272bfe-925b-4839-9a2b-285381a352a0",
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 1,
                    );
                  },
                  itemCount: 9),
            ),
          ],
        ));
  }
}
