import 'package:flutter/material.dart';

class FilterListner extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;
  final Function() onTap;
  const FilterListner({
    Key? key,
    required this.icon,
    required this.title,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black12, width: 1))),
        child: Row(
          children: [
            Icon(
              icon,
              size: 14,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            if (selected)
              Icon(
                Icons.check_circle_sharp,
                color: Colors.greenAccent,
              )
          ],
        ),
      ),
    );
  }
}
