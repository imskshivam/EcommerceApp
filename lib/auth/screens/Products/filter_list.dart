// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'filter_list_listner.dart';

class FilterList extends StatefulWidget {
  final Function(List<String>) onselect;
  const FilterList({
    Key? key,
    required this.onselect,
  }) : super(key: key);

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  List<String> Selected = [];
  static const _iconTypes = <IconData>[
    Icons.discount_outlined,
    Icons.delivery_dining,
    Icons.card_membership_sharp
  ];
  List<String> title = ["Discount", "Free Deliver", "Installment Plan"];
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          reverse: true,
          itemCount: title.length,
          itemBuilder: (context, index) {
            return FilterListner(
                icon: _iconTypes[index],
                title: title[index],
                selected: Selected.contains(title[index]),
                onTap: () {
                  toggle(title[index]);
                });
          },
        ));
  }

  void toggle(String title) {
    if (Selected.contains(title)) {
      Selected.remove(title);
    } else {
      Selected.add(title);
    }

    setState(() {
      widget.onselect(Selected);
    });
  }
}
