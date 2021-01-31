import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../footer.dart';

class MobileContact extends StatefulWidget {
  @override
  _MobileContactState createState() => _MobileContactState();
}

class _MobileContactState extends State<MobileContact> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final TextEditingController TitleController = TextEditingController();
    final TextEditingController BodyController = TextEditingController();
    var titleText;
    var bodyText;

    final size = MediaQuery.of(context).size;
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
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Contact Us' , style: _style(30),),
                Container(
                  child: Image.asset('assets/img/contact.png', fit: BoxFit.cover,),
                ),

                Text('You can contact me from here', style: _style(20),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFF0E0C38), Color(0xFF0E0C38),]
                        ),
                        boxShadow: [ BoxShadow(
                            color: Colors.white,
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                            offset: Offset(5 , 5)
                        )]
                    ),

                    //  width: size.width*0.95,
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        child:Column(
                          children: [
                            TextFormField(
                              cursorColor: Colors.white,

                              style: TextStyle(
                                  color: Colors.white
                              ),
                              controller: TitleController,
                              decoration: InputDecoration(
                                labelText: 'Title',
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                            TextFormField(
                              cursorColor: Colors.white,

                              style: TextStyle(
                                  color: Colors.white
                              ),
                              decoration: InputDecoration(
                                labelText: 'Your message',
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              controller: BodyController,
                            ),
                            SizedBox(height: 10,),
                            Container(
                                height: 40,
                                width: 120
                                ,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.purple , Colors.purpleAccent]
                                )
                            )
                                ,child: FlatButton(    onPressed: (){
                              setState(() {
                                titleText = TitleController.text;
                                bodyText = BodyController.text;
                              });

                              openUrl('mailto:sallylool.abc@gmail.com?subject=$titleText&body=$bodyText');
                            },child: Text('Send Email' ,
                              style: TextStyle(color: Colors.white),) )),

                          ],
                        ) ,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
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
  openUrl( String url){
    //  String url = 'https://www.skillshare.com/';
    launch(url);
  }
}
