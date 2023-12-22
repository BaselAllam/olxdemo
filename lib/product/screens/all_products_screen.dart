import 'package:flutter/material.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';
import 'package:store/shared/shared_widget/item_widget.dart';


enum RadioDateOption {Newest, Oldest}
enum RadioPriceOption {High, Low}


class AllProductsScreen extends StatefulWidget {
  final String screenTitle;
  const AllProductsScreen(this.screenTitle);

  @override
  State<AllProductsScreen> createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends State<AllProductsScreen> {

  RadioDateOption dateOption = RadioDateOption.Newest;
  RadioPriceOption priceOption = RadioPriceOption.Low;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(widget.screenTitle, style: SharedFonts.primaryBlackBoldText),
        centerTitle: true,
        iconTheme: IconThemeData(color: SharedColors.blackColor, size: 25.0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
      ),
      bottom: PreferredSize(
        preferredSize: Size(0.0, 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('  500 Item', style: SharedFonts.geryTextStyle),
            TextButton(
              child: Row(
                children: [
                  Icon(Icons.tune, color: SharedColors.greyColor, size: 20.0),
                  Text(' Sort', style: SharedFonts.geryTextStyle),
                ],
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                  builder: (BuildContext context) {
                    return Container(
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                        color: Colors.white
                      ),
                      child: buildSortSheetColumn(),
                    );
                  }
                );
              },
            ),
            TextButton(
              child: Row(
                children: [
                  Icon(Icons.filter_alt_outlined, color: SharedColors.greyColor, size: 20.0),
                  Text(' Filter', style: SharedFonts.geryTextStyle),
                ],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: SharedColors.greyColor,
              iconSize: 20.0,
              onPressed: () {},
            )
          ],
        ),
      ),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) => ItemWidget(10.0, 180.0),
        ),
      ),
    );
  }

  buildSortSheetColumn() {
    return Column(
      children: [
        Text('\nSort By', style: SharedFonts.primaryBlackBoldText),
        ListTile(
            title: Text('Date', style: SharedFonts.primaryBlackBoldText),
            subtitle: Divider(color: SharedColors.blackColor, endIndent: 0.0, indent: 0.0, thickness: 0.5,)
        ),
        ListTile(
          leading: Radio(
            value: RadioDateOption.Newest,
            groupValue: dateOption,
            activeColor: SharedColors.primaryColor,
            hoverColor: SharedColors.primaryColor,
            onChanged: (value) {
              dateOption = value!;
              setState(() {});
            },
          ),
          title: Text('Newest', style: SharedFonts.primaryBlackText),
        ),
        ListTile(
          leading: Radio(
            value: RadioDateOption.Oldest,
            groupValue: dateOption,
            activeColor: SharedColors.primaryColor,
            hoverColor: SharedColors.primaryColor,
            onChanged: (value) {
              dateOption = value!;
              setState(() {});
            },
          ),
          title: Text('Oldest', style: SharedFonts.primaryBlackText),
        ),
        ListTile(
            title: Text('Price', style: SharedFonts.primaryBlackBoldText),
            subtitle: Divider(color: SharedColors.blackColor, endIndent: 0.0, indent: 0.0, thickness: 0.5,)
        ),
        ListTile(
          leading: Radio(
            value: RadioPriceOption.High,
            groupValue: priceOption,
            activeColor: SharedColors.primaryColor,
            hoverColor: SharedColors.primaryColor,
            onChanged: (value) {
              priceOption = value!;
              setState(() {});
            },
          ),
          title: Text('High Price', style: SharedFonts.primaryBlackText),
        ),
        ListTile(
          leading: Radio(
            value: RadioPriceOption.Low,
            groupValue: priceOption,
            activeColor: SharedColors.primaryColor,
            hoverColor: SharedColors.primaryColor,
            onChanged: (value) {
              priceOption = value!;
              setState(() {});
            },
          ),
          title: Text('Low Price', style: SharedFonts.primaryBlackText),
        ),
      ],
    );
  }
}