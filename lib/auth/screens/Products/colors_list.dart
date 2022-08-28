// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColorList extends StatefulWidget {
  final Function(Color) onSelect;
  const ColorList({
    Key? key,
    required this.onSelect,
  }) : super(key: key);

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  List<Color> colors = [
    Colors.white,
    Colors.black87,
    Colors.greenAccent,
    Colors.cyan,
    Colors.red,
    Colors.blue,
    Colors.orangeAccent
  ];
  Color selected = Colors.white;
  select(Color color) {
    if (selected == color) {
      selected = Colors.white;
    } else {
      selected = color;
    }
    if (widget.onSelect != null) {
      widget.onSelect(selected);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 20.0,
          children: colors.map((color) {
            return InkWell(
              onTap: () {
                select(color);
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset.zero,
                          blurRadius: 15)
                    ]),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
