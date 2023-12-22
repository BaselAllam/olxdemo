import 'package:flutter/material.dart';



class FavWidget extends StatefulWidget {
  const FavWidget({super.key});

  @override
  State<FavWidget> createState() => _FavWidgetState();
}

class _FavWidgetState extends State<FavWidget> {

  bool isFav = false;
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFav ? Icons.favorite : Icons.favorite_border),
      color: Colors.red,
      iconSize: 20,
      onPressed: () {
        isFav = !isFav;
        setState(() {});
      },
    );
  }
}