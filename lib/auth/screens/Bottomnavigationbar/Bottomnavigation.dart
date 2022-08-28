import 'package:ecommerce/auth/screens/My_orders/myOrder.dart';
import 'package:ecommerce/auth/screens/Products/shimmerloading.dart';
import 'package:ecommerce/auth/screens/address/adrress.dart';
import 'package:ecommerce/auth/screens/cartscreen/cartscreen.dart';

import 'package:ecommerce/auth/screens/home_screen/home_screen.dart';
import 'package:ecommerce/auth/screens/productdetail/product_detail.dart';
import 'package:ecommerce/auth/screens/reviewscreen/reviewScreen.dart';
import 'package:ecommerce/auth/screens/settingscree/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigation extends StatefulWidget {
  static const String routName = '/actual-home';
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _page = 0;

  List<Widget> _pages = [
    const HomeScreen(),
    const Productdetailscreen(),
    const Myorder(),
    const Address(
      track: 1,
    ),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
      print(page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_page],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.orange.shade300,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              onTabChange: (index) {
                updatePage(index);
              },
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
