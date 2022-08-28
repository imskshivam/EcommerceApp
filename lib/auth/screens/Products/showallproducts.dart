import 'package:ecommerce/auth/screens/Products/shimmerloading.dart';
import 'package:flutter/material.dart';

import 'Electronic_item.dart';
import 'header_sliver.dart';

class Allproducts extends StatefulWidget {
  const Allproducts({Key? key}) : super(key: key);

  @override
  State<Allproducts> createState() => _AllproductsState();
}

class _AllproductsState extends State<Allproducts> {
  bool isLoading = false;

  List<String> numbers = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          isLoading = true;
        });
      });
    });
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: isLoading
                ? CustomScrollView(
                    slivers: [
                      SliverPersistentHeader(
                        pinned: true,
                        floating: true,
                        delegate: HeaderSliver(minExtent: 120, maxExtent: 120),
                      ),
                      SliverGrid.count(
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        crossAxisCount: size.width < 450 ? 2 : 4,
                        childAspectRatio: 0.65,
                        children: numbers.map((e) {
                          return FutureGridItem();
                        }).toList(),
                      )
                    ],
                  )
                : Allproductshimmer()));
  }
}
