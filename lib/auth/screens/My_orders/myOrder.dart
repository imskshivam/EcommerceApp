import 'package:ecommerce/auth/screens/My_orders/Order_summery.dart';
import 'package:flutter/material.dart';

class Myorder extends StatefulWidget {
  const Myorder({Key? key}) : super(key: key);

  @override
  State<Myorder> createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
          backgroundColor: Colors.white,
          title: Text(
            "My Orders",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
          bottom: TabBar(
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 5.0),
                  insets: EdgeInsets.symmetric(horizontal: 16.0)),
              tabs: [
                Tab(
                  child: Text(
                    "Completed",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    "Canceled",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    "Requested",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ]),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderSummery()));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5))),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 100,
                                        child: Text(
                                          "Iphone 12 ",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        child: Text(
                                          "Order Id:B2296",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 100,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Assigned",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Bro4U Partnernnjnjnjnjnnjnjn",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      verticalsep(),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Delivered",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "26 jul | 11 am to 12.30 Pm",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
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
                Container(
                  child: Center(
                    child: Text("2st Tab"),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("3st Tab"),
                  ),
                ),
              ]),
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
      height: 20,
    );
  }
}
