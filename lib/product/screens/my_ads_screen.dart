import 'package:flutter/material.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';
import 'package:store/shared/shared_widget/item_widget.dart';



class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({super.key});

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text('My Ads', style: SharedFonts.primaryBlackBoldText),
          centerTitle: true,
          iconTheme: IconThemeData(color: SharedColors.blackColor, size: 25.0),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) => ItemWidget(10.0, 180.0, isEditable: true),
        ),
      ),
    );
  }
}