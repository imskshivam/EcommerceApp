import 'package:ecommerce/auth/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popluar",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "See All",
                style: TextStyle(color: Colors.orange[300]),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                5,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: ProductCard(
                          title: "title",
                          bgColor: Color(0xFFEFEFF2),
                          press: () {},
                          image:
                              "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/Apple-iPhone-13-featured-image-packshot-review-removebg-preview.png?alt=media&token=83c61b55-d504-4c0e-bdec-d46fc8800c0a"),
                    )),
          ),
        )
      ],
    );
  }
}
