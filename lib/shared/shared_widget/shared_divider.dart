import 'package:flutter/material.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      endIndent: 5.0,
      indent: 5.0,
      color: SharedColors.greyColor,
      thickness: 0.5,
      height: 20.0,
    );
  }
}