import 'package:flutter/material.dart';
import 'package:mywebsite/ui/home/desktophome.dart';
import 'package:mywebsite/ui/home/mobilehome.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop:DesktopHome() ,
      tablet: DesktopHome(),
      mobile:MobileHome() ,
    );
  }
}
