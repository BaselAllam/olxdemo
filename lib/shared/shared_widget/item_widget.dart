import 'package:flutter/material.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';
import 'package:store/shared/shared_widget/fav_widget.dart';
import 'package:store/shared/shared_widget/sheet_item.dart';



class ItemWidget extends StatefulWidget {
  final double margin;
  final double height;
  final bool isEditable;
  const ItemWidget(this.margin, this.height, {this.isEditable = false});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(widget.margin),
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage('assets/villa.jpg'),
                fit: BoxFit.fill
              )
            ),
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.green,
              ),
              padding: EdgeInsets.all(5.0),
              child: Text('Active', style: TextStyle(color: Colors.white, fontSize: 15.0),),
            ),
          ),
          ListTile(
            title: Text('Villa for Sale', style: SharedFonts.primaryBlackText),
            subtitle: iconTxtWidget(Icons.location_on, 'Nasr City, Cairo Egypt'),
            trailing: widget.isEditable ? IconButton(
              icon: Icon(Icons.edit),
              color: SharedColors.greyColor,
              iconSize: 25,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                  builder: (BuildContext context) {
                    return Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                        color: Colors.white
                      ),
                      child: buildSortSheetColumn(),
                    );
                  }
                );
              },
            ) : FavWidget()
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iconTxtWidget(Icons.bed, '2'),
              iconTxtWidget(Icons.area_chart_outlined, '150M'),
              Text('500 EGP', style: SharedFonts.primaryPrimaryColorText),
            ],
          )
        ],
      ),
    );
  }

  iconTxtWidget(IconData icon, String txt) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey, size: 15.0),
        Text(' $txt', style: SharedFonts.geryTextStyle)
      ],
    );
  }

  buildSortSheetColumn() {
    return Column(
      children: [
        Text('\nChoose Action', style: SharedFonts.primaryBlackBoldText),
        sheetColumnItem('Make Active', Icons.play_arrow, Colors.green, () {}),
        sheetColumnItem('Make InActive', Icons.pause, SharedColors.greyColor, () {}),
        sheetColumnItem('Edit Ad', Icons.edit, SharedColors.greyColor, () {}),
        sheetColumnItem('Delete Ad', Icons.delete, Colors.red, () {}),
      ],
    );
  }
}