import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mywebsite/ui/footer.dart';

class MobileAbout extends StatefulWidget {
  @override
  _MobileAboutState createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0C38),
        key: _scaffoldkey,
        drawer: Drawer(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: Color(0xFF0E0C38),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/');
                      },
                      child: Text('home' , style: TextStyle(color: Colors.white , fontSize: 20),)),
                  SizedBox(height: 20,),
                  FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/about');
                      },
                      child: Text('about' , style: TextStyle(color: Colors.white , fontSize: 20),)),
                  SizedBox(height: 20,),
                  FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/contact');
                      },
                      child: Text('contact' , style: TextStyle(color: Colors.white , fontSize: 20),)),
                ],
              ),
            ),
          ),
        ),
       appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset('assets/img/logo.png' , fit: BoxFit.cover, height: 60,),

        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu , color: Colors.white,

          ),
          onPressed: ()=> _scaffoldkey.currentState.openDrawer(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ABOUT ' , style: _style(30),),
             SizedBox(height: 10,),
            Container(child: Image.asset('assets/img/development.png' , fit: BoxFit.cover,)),
            Container(child: Text('Web support for Flutter' , style: _style(30),)),
            const SizedBox(height: 20,),
            Container(
              child: Text(
                "In addition to mobile apps, Flutter supports the generation of web content rendered using standards-based"
                    "web technologies:  HTML,CSS and JavaScript . With web support , you can compile existing flutter code written in dart into "
                    "a client experience that cn be embedded in the browser and deployed to any web server . you can use all the eatures of flutter and you don't need a browser plug-in  ",
                style: _style(20),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.white,),
            ),
            Container(child: Image.asset('assets/img/about.png' , fit: BoxFit.cover,)),

            Container(child: Text('What i need for Learn flutter web ?' , style: _style(30),)),
            const SizedBox(height: 20,),
            Container(
              child:  Text(
                "If you have previously used Flutter to program mobile applications, it will be very easy for you, but if you are not, you will need some information about Dart and Flutter, as well as for a computer with fairly good specifications, at least 4 GB RAM.",
                style: _style(20),
              ),
            ),

               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Footer(),
                   ],
                 ),
               ),
          ],
        ),
      ),
    ),
      ),
    );
  }
  _style( double size){
    return GoogleFonts.mcLaren(
        fontSize: size,
        color: Colors.white
    );
  }
}
