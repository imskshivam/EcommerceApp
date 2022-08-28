import 'package:ecommerce/auth/screens/Products/filter_modal_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Action_butoon.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          offset: Offset(0.0, 10.0),
          blurRadius: 10.0,
        )
      ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    child: Icon(Icons.arrow_back_ios_new_sharp),
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
                Text(
                  "MIINTO",
                  style: TextStyle(fontSize: 18),
                ),
                Container(
                    width: 60,
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 10.0,
                      children: [Icon(Icons.search), Icon(Icons.shopping_cart)],
                    )),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ActionButton(
                  title: "Filter",
                  onTap: () {},
                ),
                verticalsep(),
                ActionButton(
                  title: "Sort",
                  onTap: () {
                    _settingModalBottomsheet(context);
                  },
                ),
                verticalsep(),
                ActionButton(
                  title: "List",
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _settingModalBottomsheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (BuildContext bc) {
          return FilterModalBottomsheet();
        });
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
