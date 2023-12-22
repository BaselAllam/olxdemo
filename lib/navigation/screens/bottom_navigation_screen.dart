import 'package:flutter/material.dart';
import 'package:store/navigation/screens/home_page_screen.dart';
import 'package:store/navigation/screens/notification_screen.dart';
import 'package:store/navigation/screens/profile_screen.dart';
import 'package:store/product/screens/add_product_screen.dart';
import 'package:store/product/screens/wishlist_screen.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';



class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  final List<Map<String, dynamic>> screens = [
    {
      'label': 'Home',
      'icon': Icons.home,
      'screen': HomePageScreen()
    },
    {
      'label': 'Notification',
      'icon': Icons.notifications_active_outlined,
      'screen': NotificationScreen()
    },
    {
      'label': 'Add Product',
      'icon': Icons.add,
      'screen': AddProductScreen()
    },
    {
      'label': 'Wishlist',
      'icon': Icons.favorite,
      'screen': WishlistScreen()
    },
    {
      'label': 'Profile',
      'icon': Icons.person,
      'screen': ProfileScreen()
    },
  ];
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('${screens[currentScreen]['label']}', style: SharedFonts.primaryBlackBoldText),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          for (Map i in screens)
          BottomNavigationBarItem(
            icon: Icon(i['icon']),
            label: i['label'],
          ),
        ],
        selectedIconTheme: IconThemeData(color: SharedColors.primaryColor, size: 30.0),
        unselectedIconTheme: IconThemeData(color: SharedColors.greyColor, size: 25.0),
        showSelectedLabels: false,
        currentIndex: currentScreen,
        onTap: (index) {
          currentScreen = index;
          setState(() {});
        },
      ),
      body: screens[currentScreen]['screen'],
    );
  }
}