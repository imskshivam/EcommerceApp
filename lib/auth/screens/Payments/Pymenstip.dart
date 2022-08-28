import 'package:flutter/material.dart';

class paymentstip extends StatelessWidget {
  const paymentstip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.orange.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Select your Card",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.qr_code_scanner_sharp,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Add Card"),
                    ],
                  ),
                ),
              ),
              color: Colors.grey.withOpacity(0.2),
            )
          ],
        ),
      ),
    );
  }
}
