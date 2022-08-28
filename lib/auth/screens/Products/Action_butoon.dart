// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  const ActionButton({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Wrap(
          spacing: 10.0,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(
              Icons.menu_open_sharp,
              color: Colors.blueAccent,
            ),
            Stack(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
                ),
                Positioned(
                  top: -3,
                  right: -12,
                  child: Container(
                    width: 10,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Icon(
                      Icons.done,
                      color: Colors.blueAccent,
                    ),
                    height: 14,
                  ),
                )
              ],
            )
          ]),
    );
  }
}
