import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/auth/screens/productdetail/product_detail.dart';
import 'package:ecommerce/auth/screens/sidedrwaer/sideNavigation.dart';
import 'package:ecommerce/models/categorymodel.dart';

import 'package:ecommerce/services/category.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import 'package:ecommerce/auth/screens/home_screen/Popular.dart';
import 'package:ecommerce/auth/screens/home_screen/newArrival.dart';
import 'package:ecommerce/auth/screens/home_screen/searchbar.dart';
import 'package:ecommerce/providers/user_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Categories> categories = [];
  final CategoryServices categoryServices = CategoryServices();

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isdrawer = false;

  PageController pageController = PageController(viewportFraction: 1.0);
  var page = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchAllCtegory();
    pageController.addListener(() {
      setState(() {
        page = pageController.page!;
        print(page.toString());
      });
    });
  }

  void fetchAllCtegory() async {
    categories = await categoryServices.fetchAllcategory(context);
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
        body: Stack(
      children: [
        DrawerScreen(),
        AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor)
            ..rotateY(isdrawer ? -0.5 : 0),
          duration: Duration(milliseconds: 250),
          decoration: BoxDecoration(color: Colors.white),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                pinned: false,
                leading: isdrawer
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            isdrawer = false;
                          });
                        },
                        icon: Icon(Icons.arrow_back_ios))
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 150;
                            scaleFactor = 0.6;
                            isdrawer = true;
                          });
                        },
                        icon: Icon(Icons.menu)),
                title: Text(" MIINTO"),
                expandedHeight: 200,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                    stretchModes: <StretchMode>[
                      StretchMode.zoomBackground,
                    ],
                    background: Lottie.network(
                        "https://assets5.lottiefiles.com/packages/lf20_w2hewgoy.json")),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Lottie.network(
                          "https://assets1.lottiefiles.com/packages/lf20_0skurerf.json")),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 18,
                    ),
                  )
                ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                      const Text(
                        "Best offer for you",
                        style: TextStyle(fontSize: 18),
                      ),
                      const Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SearchForm(),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            categories.length,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CategoryCard(
                                icon: categories[index].images,
                                title: categories[index].name,
                                press: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Productdetailscreen()));
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2.5,
                          width: MediaQuery.of(context).size.width -
                              MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          ),
                          child: PageView.builder(
                              controller: pageController,
                              itemCount: 5,
                              itemBuilder: (context, position) {
                                return Container(
                                  child: Image.network(
                                      "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/Apple-iPhone-13-featured-image-packshot-review-removebg-preview.png?alt=media&token=83c61b55-d504-4c0e-bdec-d46fc8800c0a"),
                                );
                              }),
                          // child: Image.network(
                          //     "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/Apple-iPhone-13-featured-image-packshot-review-removebg-preview.png?alt=media&token=83c61b55-d504-4c0e-bdec-d46fc8800c0a"),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        color: Colors.grey[100],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DotsIndicator(
                              dotsCount: 5,
                              position: page,
                              decorator: DotsDecorator(
                                size: const Size.square(7.0),
                                activeSize: const Size(15.0, 9.0),
                                activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      NewArrival(),
                      const SizedBox(
                        height: 15,
                      ),
                      Popular(),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Special for You",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "See more",
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            specialOffer(
                                category: "category",
                                images:
                                    "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/Apple-iPhone-13-featured-image-packshot-review-removebg-preview.png?alt=media&token=83c61b55-d504-4c0e-bdec-d46fc8800c0a",
                                numofBrands: 3,
                                press: () {}),
                            specialOffer(
                                category: "category",
                                images:
                                    "https://firebasestorage.googleapis.com/v0/b/ecommercehack08.appspot.com/o/Apple-iPhone-13-featured-image-packshot-review-removebg-preview.png?alt=media&token=83c61b55-d504-4c0e-bdec-d46fc8800c0a",
                                numofBrands: 3,
                                press: () {}),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Brands",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: List.generate(
                                20,
                                (index) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                          radius: 45,
                                          backgroundColor: Colors.grey[200],
                                          child: Lottie.network(
                                              "https://assets8.lottiefiles.com/private_files/lf30_cuqnb4it.json")),
                                    ))),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}

class specialOffer extends StatelessWidget {
  const specialOffer({
    Key? key,
    required this.category,
    required this.images,
    required this.numofBrands,
    required this.press,
  }) : super(key: key);
  final String category;
  final String images;
  final int numofBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 242,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.network(
                images,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15)
                    ])),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text.rich(
                    TextSpan(style: TextStyle(color: Colors.white), children: [
                  TextSpan(
                      text: "Smartphone\n",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextSpan(text: "18 brands")
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.title,
      required this.bgColor,
      required this.press,
      required this.image})
      : super(key: key);
  final String image, title;
  final Color bgColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: EdgeInsets.all(6),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFFEFEFF2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Image.network(
                image,
                height: 132,
                width: 120,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Long sleeve Shirts fgsd fgd",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "\$165",
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          child: Column(
            children: [
              Hero(
                tag: 'dash',
                child: Image.network(
                  icon,
                  width: 50,
                  height: 70,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(title, style: Theme.of(context).textTheme.subtitle2)
            ],
          ),
        ));
  }
}
