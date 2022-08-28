import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Step 1'),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.badge),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order placed",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 200,
                child: Text(
                  "Order#234568 From Retail pvt sgdgdgdg glmt",
                  maxLines: 2,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ],
          ),
          Text("3:00 pm")
        ],
      ),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.warehouse),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Product Recived",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 200,
                child: Text(
                  "Order#234568 To Order#5656444 grugram",
                  maxLines: 2,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ],
          ),
          Text("6:00 pm")
        ],
      ),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.airplanemode_active),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shipped",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 200,
                child: Text(
                  "Order#234568 From Nagpur",
                  maxLines: 2,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ],
          ),
          Text("3:00 pm")
        ],
      ),
      isActive: true,
    ),
    Step(
      title: Text('Step 4'),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.handshake_outlined),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivered",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 200,
                child: Text(
                  "106/7 Gurugram Near D mart",
                  maxLines: 2,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ],
          ),
          Text("8:00 pm")
        ],
      ),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Track Order",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Wed, 12 Sep",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order ID: 5t36-83j4",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Amt: 345.00",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "ETA : 15 min",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                child: Stepper(
                  elevation: 1.5,
                  currentStep: this.current_step,
                  steps: steps,
                  type: StepperType.vertical,
                  onStepTapped: (step) {
                    setState(() {
                      current_step = step;
                    });
                  },
                  // onStepContinue: () {
                  //   setState(() {
                  //     if (current_step < steps.length - 1) {
                  //       current_step = current_step + 1;
                  //     } else {
                  //       current_step = 0;
                  //     }
                  //   });
                  // },
                  // onStepCancel: () {
                  //   setState(() {
                  //     if (current_step > 0) {
                  //       current_step = current_step - 1;
                  //     } else {
                  //       current_step = 0;
                  //     }
                  //   });
                  // },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.green, blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Delivery Address",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Home : Work & Other address",
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Text(
                                  "House no : No 2364 bn b bih bb b b b b b b  , 2nd Floor,Sector 18",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star_border_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Don't forget to rate ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Help us",
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w500),
                              ),
                              RatingBar.builder(
                                initialRating: 4.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: 25,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
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
    );
  }
}
