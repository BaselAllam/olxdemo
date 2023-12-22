import 'package:flutter/material.dart';
import 'package:store/product/screens/my_ads_screen.dart';
import 'package:store/shared/shared_theme/shared_colors.dart';
import 'package:store/shared/shared_theme/shared_fonts.dart';
import 'package:store/shared/shared_widget/cutom_field.dart';
import 'package:store/shared/shared_widget/sheet_item.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  bool isEditable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            sectionTitle(
              'Profile Data',
              IconButton(
                icon: Icon(isEditable ? Icons.done : Icons.edit),
                color: isEditable ? SharedColors.primaryColor : SharedColors.greyColor,
                iconSize: 20.0,
                onPressed: () {
                  isEditable = !isEditable;
                  setState(() {});
                },
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20.0),
                  height: 200.0,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: SharedColors.primaryColor, width: 1.5),
                    image: DecorationImage(
                      image: AssetImage('assets/pp.jpeg'),
                      fit: BoxFit.fill
                    )
                  ),
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: IconButton(
                      icon: Icon(Icons.edit),
                      color: SharedColors.primaryColor,
                      iconSize: 30.0,
                      onPressed: () {
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
                      },
                    ),
                  ),
                ),
              ],
            ),
            itemWidget(
              'Full Name',
              Icons.person,
              customField('Full Name', Icons.person, fullNameController, TextInputType.name, isEnable: isEditable),
              () {}
            ),
            itemWidget(
              'Email',
              Icons.email,
              customField('Email Address', Icons.email, emailController, TextInputType.emailAddress, isEnable: isEditable),
              () {}
            ),
            itemWidget(
              'Phone Number',
              Icons.phone,
              customField('Phone Number', Icons.phone, numberController, TextInputType.number, isEnable: isEditable),
              () {}
            ),
            itemWidget(
              'Gender',
              Icons.merge_type,
              SizedBox(),
              () {}
            ),
            itemWidget(
              'Address',
              Icons.location_on,
              customField('Address', Icons.location_on, addressController, TextInputType.text, isEnable: isEditable),
              () {}
            ),
            itemWidget(
              'Password',
              Icons.lock,
              customField('Password', Icons.lock, passwordController, TextInputType.text, isEnable: isEditable),
              () {}
            ),
            sectionTitle(
              'Account Data',
              SizedBox()
            ),
            itemWidget(
              'My Ads',
              Icons.list,
              SizedBox(),
              () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => MyAdsScreen()));
              }
            ),
            sectionTitle(
              'App Data',
              SizedBox()
            ),
            itemWidget(
              'Change Language',
              Icons.language,
              SizedBox(),
              () {}
            ),
            itemWidget(
              'Notification',
              Icons.notification_add_outlined,
              SizedBox(),
              () {}
            ),
            itemWidget(
              'Help & Support',
              Icons.help_outline,
              SizedBox(),
              () {}
            ),
            itemWidget(
              'Logout',
              Icons.exit_to_app,
              SizedBox(),
              () {}
            ),
          ],
        ),
      ),
    );
  }

  sectionTitle(String txt, Widget trailing) {
    return ListTile(
      title: Text(txt, style: SharedFonts.primaryBlackBoldText),
      trailing: trailing
    );
  }

  itemWidget(String txt, IconData icon, Widget subtitleWidget, Function onTapParam) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: ListTile(
        title: Text(txt, style: SharedFonts.primaryBlackText),
        subtitle: subtitleWidget,
        // leading: Icon(icon, color: SharedColors.primaryColor, size: 25.0,),
        onTap: () {
          onTapParam();
        },
      ),
    );
  }
}