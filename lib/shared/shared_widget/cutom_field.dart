import 'package:flutter/material.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';



Container customField(String label, IconData prefixIcon, TextEditingController controller, TextInputType type, {bool isEnable = true}) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: TextField(
      decoration: InputDecoration(
        border: fieldBorder(SharedColors.greyColor),
        errorBorder: fieldBorder(Colors.red),
        focusedBorder: fieldBorder(SharedColors.greyColor),
        enabledBorder: fieldBorder(SharedColors.greyColor),
        labelText: label,
        labelStyle: SharedFonts.geryTextStyle,
        prefixIcon: Icon(prefixIcon, color: SharedColors.greyColor, size: 20.0),
      ),
      keyboardType: type,
      controller: controller,
      enabled: isEnable,
    ),
  );
}


OutlineInputBorder fieldBorder(Color color) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 1.0),
    borderRadius: BorderRadius.circular(20.0)
  );
}