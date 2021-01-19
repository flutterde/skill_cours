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
          icon: Icon(Icons.home_outlined , color: Colors.white,

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
            Text('ABOUT US' , style: _style(30),),
             SizedBox(height: 10,),
            Container(child: Image.asset('assets/img/about.png' , fit: BoxFit.cover,)),
            Container(child: Text('My title' , style: _style(30),)),
            const SizedBox(height: 20,),
            Container(
              child: Text('Now build your own site with ease, without the need to learn many techniques,'
                  ' and in only a short time you can build the most amazing website you want' , style: _style(20),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.white,),
            ),

            Container(child: Text('My title' , style: _style(30),)),
            const SizedBox(height: 20,),
            Container(
              child: Text('Now build your own site with ease, without the need to learn many techniques,'
                  ' and in only a short time you can build the most amazing website you want' , style: _style(20),),
            ),
            Container(child: Image.asset('assets/img/about.png' , fit: BoxFit.cover,)),
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
