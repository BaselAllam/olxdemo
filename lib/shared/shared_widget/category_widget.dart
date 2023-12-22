import 'package:flutter/material.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';
import 'package:store/shared/shared_widget/sub_category_widget.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            builder: (BuildContext context) {
              return Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Text('\nChoose Sub Category',
                        style: SharedFonts.primaryBlackBoldText),
                    Row(
                      children: [
                        SubCategoryWidget('Apartment For Sale'),
                        SubCategoryWidget('Apartment For Rent')
                      ],
                    ),
                    Row(
                      children: [
                        SubCategoryWidget('Villa For Sale'),
                        SubCategoryWidget('Villa For Rent')
                      ],
                    ),
                    Row(
                      children: [
                        SubCategoryWidget('Challet For Sale'),
                        SubCategoryWidget('Challet For Rent')
                      ],
                    ),
                  ],
                ),
              );
            });
      },
      child: Container(
        width: 70,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 60,
              margin: EdgeInsets.only(bottom: 5.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              padding: EdgeInsets.all(10.0),
              child: Image.asset('assets/house.png'),
            ),
            Text('Apartments',
                style: TextStyle(color: Colors.black, fontSize: 13.0))
          ],
        ),
      ),
    );
  }
}
