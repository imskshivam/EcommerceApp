import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ordertracker_line extends StatelessWidget {
  final int num;

  const ordertracker_line({
    Key? key,
    this.num = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: num > 0
                  ? BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.green, blurRadius: 20)
                    ])
                  : null,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  num > 0
                      ? Icon(
                          Icons.shopping_bag,
                          color: Colors.black,
                          size: 17,
                        )
                      : LottieBuilder.network(
                          "https://assets5.lottiefiles.com/packages/lf20_esxf7fph.json")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Cart",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        SizedBox(
          width: 5,
        ),
        DottedLine(
          direction: Axis.horizontal,
          lineLength: 100,
          lineThickness: 2.0,
          dashLength: 3.0,
          dashColor: num > 0 ? Colors.green : Colors.black,
          dashGapRadius: .0,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Container(
                height: 20,
                width: 20,
                decoration: num > 1
                    ? BoxDecoration(boxShadow: [
                        BoxShadow(color: Colors.green, blurRadius: 20)
                      ])
                    : null,
                child: num > 1
                    ? LottieBuilder.network(
                        "https://assets5.lottiefiles.com/packages/lf20_esxf7fph.json")
                    : Icon(
                        Icons.location_on,
                        color: Colors.black,
                        size: 17,
                      )),
            SizedBox(
              height: 5,
            ),
            Text(
              "Location",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        SizedBox(
          width: 5,
        ),
        DottedLine(
          direction: Axis.horizontal,
          lineLength: 100,
          lineThickness: 2.0,
          dashLength: 4.0,
          dashColor: num > 1 ? Colors.green : Colors.black,
          dashGapRadius: 5.0,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: num == 2
                  ? BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.green, blurRadius: 20)
                    ])
                  : null,
              child: Icon(Icons.payment,
                  color: num == 2 ? Colors.green : Colors.black, size: 17),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Payment",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ],
    );
  }
}
