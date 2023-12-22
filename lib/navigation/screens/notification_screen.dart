import 'package:flutter/material.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';



class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: SharedColors.primaryColor
                  ),
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.notifications_active, color: Colors.white, size: 25.0),
                ),
                title: Text('Product Added Succefully', style: SharedFonts.primaryBlackText),
                subtitle: Text('Product Named Property for sale has been approved', style: SharedFonts.geryTextStyle),
                trailing: Text('20 Oct 2023', style: SharedFonts.subPrimaryColorText),
              ),
            );
          },
        ),
      ),
    );
  }
}