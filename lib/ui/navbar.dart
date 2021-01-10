import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8 , horizontal: 12),
      child: Container(
        child: Row(
          children: [
            Image.asset('assets/img/logo.png' , fit: BoxFit.cover,),
            Spacer(),
            FlatButton(child: Text('HOME' ,style: _style()), onPressed: (){
              Navigator.pushNamed(context, '/');
            },),
            SizedBox(width: 10,),
            FlatButton(child: Text('ABOUT' ,style: _style()), onPressed: (){
              Navigator.pushNamed(context, '/about');
              
            },),
           SizedBox(width: 10,),
            FlatButton(child: Text('CONTACT' ,style: _style()), onPressed: (){
              Navigator.pushNamed(context, '/contact');
            },),
          ],
        ),

      ),
    );

  }
  _style(){
  return GoogleFonts.mcLaren(
    color: Colors.white,
    fontWeight: FontWeight.bold
  );
  }

}
