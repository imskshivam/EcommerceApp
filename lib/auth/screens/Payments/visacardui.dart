import 'dart:math';

import 'package:flutter/material.dart';

class VisaUI extends StatefulWidget {
  const VisaUI({Key? key}) : super(key: key);

  @override
  State<VisaUI> createState() => _VisaUIState();
}

class _VisaUIState extends State<VisaUI> {
  double x = 0;
  double y = 0;
  double amplitude = 0.3;
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()
        ..rotateX(x)
        ..rotateY(y),
      child: GestureDetector(
        onPanUpdate: (details) {
          if (y - details.delta.dx < 0) {
            setState(() {
              y = max(y - details.delta.dx / 100, -amplitude);
            });
          } else {
            setState(() {
              y = min(y - details.delta.dx / 100, amplitude);
            });
          }

          if (x - details.delta.dy < 0) {
            setState(() {
              x = min(x - details.delta.dy / 100, -amplitude);
            });
          } else {
            setState(() {
              x = max(x - details.delta.dy / 100, amplitude);
            });
          }
        },
        child: Container(
          width: 350,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(235, 244, 245, 1),
                Color.fromRGBO(181, 198, 224, 1),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Color(0xaa5864f8),
                    blurRadius: 28,
                    offset: Offset(x, y + 4))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dk60.60",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.view_in_ar_sharp)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "1524-5498-6945-xxxx",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Card Holder Name",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "EXPIRES ON",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "CVV",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SHIVAM KARORIA",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "10/2026",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "443",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
