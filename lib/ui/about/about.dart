import 'package:flutter/material.dart';
import 'package:mywebsite/ui/about/desktop_about.dart';
import 'package:mywebsite/ui/about/mobile_about.dart';
import 'package:mywebsite/ui/home/desktophome.dart';
import 'package:mywebsite/ui/home/mobilehome.dart';
import 'package:responsive_builder/responsive_builder.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop:DesktopAbout() ,
      tablet: DesktopAbout(),
      mobile:MobileAbout() ,
    );
  }
}