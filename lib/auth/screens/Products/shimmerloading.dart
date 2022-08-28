import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Allproductshimmer extends StatelessWidget {
  const Allproductshimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(10.0),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: 6,
          itemBuilder: (BuildContext ctx, index) {
            return Shimmer.fromColors(
                child: Container(
                  height: 300,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 25,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 25,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                period: const Duration(seconds: 2),
                baseColor: Colors.grey.withOpacity(0.25),
                highlightColor: Colors.white.withOpacity(0.6));
          }),
    ));
  }
}
