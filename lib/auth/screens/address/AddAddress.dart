import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "Name", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Modible No", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  labelText: "Address/Home/Work", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Pincode",
                  hintMaxLines: 4,
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: () {
                  var snackBar = SnackBar(
                    duration: Duration(milliseconds: 3),
                    content: Text("Saved  "),
                    backgroundColor: Colors.green[500],
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text(
                  "Add Address",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
