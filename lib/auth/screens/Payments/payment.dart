import 'package:ecommerce/auth/screens/Payments/Pymenstip.dart';
import 'package:ecommerce/auth/screens/Payments/visacardui.dart';
import 'package:ecommerce/auth/screens/cartscreen/linearcheckout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  int selected = 0;
  static const _iconTypes = <IconData>[
    Icons.card_membership,
    Icons.card_membership,
    Icons.payment,
    Icons.wallet,
    Icons.delivery_dining,
  ];

  List<String> gateway = [
    "Visa",
    "Amazon pay",
    "Phone pe",
    "Wallet",
    "Cash on delivery"
  ];
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.withOpacity(0.1),
        elevation: 0,
        title: Text(
          "MIINTO",
          style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ordertracker_line(),
            ),
            paymentstip(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit_note_outlined,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Edit"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  VisaUI(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selected = index;

                          var snackBar = SnackBar(
                            duration: Duration(milliseconds: 3),
                            content: Text("Clicked ${gateway[index]} "),
                            backgroundColor: Colors.green[500],
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        });
                      },
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: selected == index
                                  ? Border.all(color: Colors.black)
                                  : null),
                          child: ListTile(
                            leading: Icon(_iconTypes[index]),
                            title: Text(
                              gateway[index],
                              style: TextStyle(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () {},
                  child: Text(
                    "Make",
                    style: TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 2),
                  ))),
        ),
      ),
    );
  }

  void showInSnackBar(String value) {
    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text(value)));
  }
}
