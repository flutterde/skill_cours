import 'package:flutter/material.dart';
import 'package:mywebsite/ui/about/desktop_about.dart';
import 'package:mywebsite/ui/about/mobile_about.dart';
import 'package:mywebsite/ui/contact/desktop_contact.dart';
import 'package:mywebsite/ui/contact/mobile_contact.dart';
import 'package:mywebsite/ui/home/desktophome.dart';
import 'package:mywebsite/ui/home/mobilehome.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop:DesktopContact() ,
      tablet: DesktopContact(),
      mobile:MobileContact() ,
    );
  }
}