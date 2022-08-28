import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors_list.dart';
import 'filter_list.dart';

class FilterModalBottomsheet extends StatelessWidget {
  const FilterModalBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          child: Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                        Close(context);
                      },
                      child: Icon(Icons.close),
                    ),
                  ),
                  Text(
                    "Filter",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Container(
                    width: 100,
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: Text(
                        "Reset",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.black, fontSize: 16.0),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Text(
                  "Price Range",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: Colors.black12, width: 1)),
                      width: ((size.width / 2) - 55),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Minimum",
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      width: 15,
                      height: 1,
                      color: Colors.black38,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: Colors.black12, width: 1)),
                      width: ((size.width / 2) - 55),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Maximum",
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Text(
                  "Item Filter",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Container(
                child: FilterList(onselect: (selected) => print(selected)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Item Color",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ColorList(onSelect: (color) => print(color)),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  onPressed: () {
                    Close(context);
                  },
                  child: Text(
                    "Apply Filter",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void Close(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }
}
