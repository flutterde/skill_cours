import 'package:flutter/material.dart';
import 'package:mywebsite/ui/navbar.dart';

class DesktopAbout extends StatefulWidget {
  @override
  _DesktopAboutState createState() => _DesktopAboutState();
}

class _DesktopAboutState extends State<DesktopAbout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0E0C38),
      appBar: PreferredSize(
        preferredSize: Size(size.width , size.height*0.14),
        child: NavBar(),
      ),
      body: Center(
        child: Text('about' , style: TextStyle(color: Colors.white , fontSize: 30),),
      ),
    );
  }
}
