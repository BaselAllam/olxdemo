import 'package:flutter/material.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';
import 'package:store/shared/shared_widget/category_widget.dart';
import 'package:store/shared/shared_widget/cutom_field.dart';
import 'package:store/shared/shared_widget/shared_divider.dart';
import 'package:store/shared/shared_widget/sheet_item.dart';



class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {

TextEditingController priceController = TextEditingController();
TextEditingController titleController = TextEditingController();
TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            sectionTitle(
              'Pick Images',
              Icons.add_a_photo,
              () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                        color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Text('\nChoose Destionation', style: SharedFonts.primaryBlackBoldText),
                          sheetColumnItem('Gallery', Icons.photo, SharedColors.greyColor, () {}),
                          sheetColumnItem('Camera', Icons.photo, SharedColors.greyColor, () {}),
                        ],
                      ),
                    );
                  }
                );
              }
            ),
            imagesSection(),
            CustomDivider(),
            sectionTitle(
              'Choose Category',
              Icons.category,
              () {}
            ),
            categorySection(),
            CustomDivider(),
            sectionTitle(
              'Product Data',
              Icons.data_array,
              () {}
            ),
            customField('Price', Icons.attach_money, priceController, TextInputType.number),
            customField('Title', Icons.title, titleController, TextInputType.text),
            customField('Description', Icons.description, descriptionController, TextInputType.text),
            CustomDivider(),
            sectionTitle(
              'Product Specific Data',
              Icons.data_array,
              () {}
            ),
          ],
        ),
      ),
    );
  }

  sectionTitle(String title, IconData icon, Function onPress) {
    return ListTile(
      title: Text(title, style: SharedFonts.primaryBlackText),
      trailing: IconButton(
        icon: Icon(icon),
        color: SharedColors.primaryColor,
        iconSize: 20.0,
        onPressed: () {
          onPress();
        },
      ),
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

  imagesSection() {
    return Container(
      height: 125.0,
      margin: EdgeInsets.only(bottom: 10.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: 125.0,
            height: 125.0,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage('assets/carads.jpg'),
                fit: BoxFit.fill
              )
            ),
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.delete),
              color: SharedColors.blackColor,
              iconSize: 20.0,
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}