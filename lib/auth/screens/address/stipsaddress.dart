import 'package:ecommerce/auth/screens/address/AddAddress.dart';
import 'package:flutter/material.dart';

class stipsaddress extends StatelessWidget {
  const stipsaddress({Key? key}) : super(key: key);

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
              "Select your Address",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                print("1");
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25.0))),
                    context: context,
                    builder: (context) {
                      return AddAddress();
                    });
              },
              child: Container(
                height: 40,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Add Address"),
                      ],
                    ),
                  ),
                ),
                color: Colors.grey.withOpacity(0.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
