import 'package:flutter/material.dart';

class Inputfield extends StatefulWidget {
  const Inputfield({Key? key}) : super(key: key);

  @override
  State<Inputfield> createState() => _InputfieldState();
}

class _InputfieldState extends State<Inputfield> {
  String _selectedcode = "+91";
  List<String> codelist = [
    "+91",
    "+92",
    "+93",
    "+94",
    "+95",
    "+96",
    "+97",
    "+98",
    "+99",
    "+1",
    "+81",
    "+82",
    "+83",
    "+84",
    "+85",
    "+71",
    "+72",
    "+73",
    "+74",
    "+75",
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton(
          value: _selectedcode,
          icon: Icon(Icons.keyboard_arrow_down),
          focusColor: Colors.grey,
          iconSize: 32,
          elevation: 4,
          menuMaxHeight: 200,
          underline: null,
          isExpanded: false,
          onChanged: (String? newValue) {
            setState(() {
              _selectedcode = newValue!;
            });
          },
          items: codelist.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              child: Text(value),
              value: value,
            );
          }).toList(),
        ),
        SizedBox(
          width: 1,
        ),
      ],
    );
  }
}
