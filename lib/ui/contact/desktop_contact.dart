import 'package:flutter/material.dart';
import 'package:mywebsite/ui/navbar.dart';

class DesktopContact extends StatefulWidget {
  @override
  _DesktopContactState createState() => _DesktopContactState();
}

class _DesktopContactState extends State<DesktopContact> {
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
        child: Text('contact' , style: TextStyle(color: Colors.white , fontSize: 30),),
      ),
    );

  }
}
