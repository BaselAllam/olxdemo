import 'package:flutter/material.dart';
import 'package:store/product/screens/all_products_screen.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';
import 'package:store/shared/shared_widget/category_widget.dart';
import 'package:store/shared/shared_widget/item_widget.dart';
import 'package:store/shared/shared_widget/sub_category_widget.dart';


class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      body: ListView(
        children: [
          adsSection(),
          sectionTitle('Categories'),
          categorySection(),
          sectionTitle('Recommended Property'),
          itemSection(),
          sectionTitle('Recommended Vechiles'),
          itemSection(),
          sectionTitle('Recommended Electronics'),
          itemSection(),
          sectionTitle('Recommended Fashion'),
          itemSection(),
        ],
      ),
    );
  }

  Widget adsSection() {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5.0),
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage('assets/carads.jpg'),
                fit: BoxFit.fill
              )
            ),
          );
        },
      ),
    );
  }

  Widget sectionTitle(String title) {
    return ListTile(
      title: Text(
        title,
        style: SharedFonts.primaryBlackText
      ),
      trailing: Text(
        'see all',
        style: SharedFonts.subPrimaryColorText
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => AllProductsScreen(title)));
      },
    );
  }

  Widget categorySection() {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryWidget();
        },
      ),
    );
  }

  Widget itemSection() {
    return Container(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return ItemWidget(5.0, 130);
        },
      ),
    );
  }
}