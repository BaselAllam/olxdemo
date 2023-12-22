import 'package:flutter/material.dart';
import 'package:store/product/screens/all_products_screen.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';



class SubCategoryWidget extends StatefulWidget {
  final String title;
  const SubCategoryWidget(this.title);

  @override
  State<SubCategoryWidget> createState() => _SubCategoryWidgetState();
}

class _SubCategoryWidgetState extends State<SubCategoryWidget> {
  
  bool isPressed = false;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isPressed = !isPressed;
        setState(() {});
        Navigator.push(context, MaterialPageRoute(builder: (_) => AllProductsScreen(widget.title)));
      },
      child: Container(
        width: widget.title.length * 10,
        height: 30.0,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          border: Border.all(color: SharedColors.primaryColor, width: 1.0),
          color: isPressed ? SharedColors.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(20.0)
        ),
        alignment: Alignment.center,
        child: Text(widget.title, style: isPressed ? TextStyle(color: Colors.white, fontSize: 15.0) : SharedFonts.subPrimaryColorText),
      ),
    );
  }
}