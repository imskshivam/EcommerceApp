import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class subtotal extends StatelessWidget {
  const subtotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      strokeWidth: 1,
      borderType: BorderType.RRect,
      color: Colors.grey,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price Details",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Price (8 items)"), Text("Dk 60,600")],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discount"),
                  Text(
                    "-Dk 5,601",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Charges"),
                  Text(
                    "Free",
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Secured Packing Fee"), Text("Dk 29")],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[200],
                endIndent: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Total Amount"), Text("Dk 55,028")],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[200],
                endIndent: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You will save Dk 5,572 on this order",
                maxLines: 2,
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
