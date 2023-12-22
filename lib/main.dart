import 'package:flutter/material.dart';
import 'package:store/navigation/screens/bottom_navigation_screen.dart';
import 'dart:ui';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: BottomNavigationScreen()
    );
  }
}


// email => ostoreostore515@gmail.com
// password => @Ostore123###


// Next Session 
    // Launcher Icon
    // Device Camera
    // Goolge Maps & Permissions
    // Shared Preferences

    /*

      https://images.pexels.com/photos/276724/pexels-photo-276724.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/7746945/pexels-photo-7746945.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/7746463/pexels-photo-7746463.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/17180776/pexels-photo-17180776/free-photo-of-breakfast-on-bed-in-mountain-chalet.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/120049/pexels-photo-120049.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/244206/pexels-photo-244206.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/116675/pexels-photo-116675.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/2343467/pexels-photo-2343467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/3773573/pexels-photo-3773573.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/8292834/pexels-photo-8292834.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
      https://images.pexels.com/photos/577769/pexels-photo-577769.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1

    */


// Next Session
    // Intro to State Management
    // Post & Get Method APIs


// Next Session
    // Continue with State Management
    // Put & Delete Method APIs

// Next Session
    // Finialize State Management
    // Responsive Screen

// Next Session
    // Relasing
    // Say GoodBye



class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}