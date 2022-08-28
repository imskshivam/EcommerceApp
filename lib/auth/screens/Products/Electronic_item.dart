import 'dart:ui';

import 'package:ecommerce/auth/screens/cartscreen/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../productdetail/product_detail.dart';

class FutureGridItem extends StatefulWidget {
  const FutureGridItem({Key? key}) : super(key: key);

  @override
  State<FutureGridItem> createState() => _FutureGridItemState();
}

class _FutureGridItemState extends State<FutureGridItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: Offset.zero,
                blurRadius: 15.0)
          ]),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 37),
                  height: 100,
                  decoration: BoxDecoration(),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Productdetailscreen()));
                    },
                    child: Image.network(
                        "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/Apple-iPhone-13-featured-image-packshot-review-removebg-preview.png?alt=media&token=83c61b55-d504-4c0e-bdec-d46fc8800c0a"),
                  ),
                ),
                Positioned(
                    top: 16,
                    right: 0,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.greenAccent.withOpacity(0.7)),
                      child: Center(
                          child: Text(
                        "30%",
                        style: TextStyle(color: Colors.white),
                      )),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Iphone 13 Pro Max",
                  style: TextStyle(fontSize: 13, height: 1.5),
                ),
                Wrap(
                  spacing: 3,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Dk 5.47",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 1.5),
                    ),
                    Text(
                      "Dk 5.47",
                      style: TextStyle(
                          fontSize: 13,
                          height: 1.5,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 4.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 12,
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
                        width: 5,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
