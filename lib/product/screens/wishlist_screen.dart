import 'package:flutter/material.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_widget/item_widget.dart';



class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) => ItemWidget(10.0, 180.0),
        ),
      ),
    );
  }
}