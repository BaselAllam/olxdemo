import 'package:flutter/material.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';


sheetColumnItem(String txt, IconData icon, Color iconColor, Function onTapParam) {
  return ListTile(
    leading: Icon(icon, color: iconColor, size: 30.0),
    title: Text(txt, style: SharedFonts.primaryBlackText),
    onTap: () {
      onTapParam();
    },
  ); 
}