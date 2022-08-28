// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Addresstemp extends StatelessWidget {
  final String label;
  final String name;
  final String phoneno;
  final String address;

  const Addresstemp({
    Key? key,
    required this.label,
    required this.name,
    required this.phoneno,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      label == "Home"
                          ? Icon(Icons.home_sharp)
                          : Icon(Icons.work_sharp),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Home")
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.edit_note),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Edit")
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500]),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                phoneno,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                address,
                maxLines: 4,
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
