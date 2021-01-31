import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mywebsite/ui/footer.dart';
import 'package:mywebsite/ui/navbar.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopContact extends StatefulWidget {
  @override
  _DesktopContactState createState() => _DesktopContactState();
}

class _DesktopContactState extends State<DesktopContact> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController TitleController = TextEditingController();
    final TextEditingController BodyController = TextEditingController();
    var titleText;
    var bodyText;

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0E0C38),
      appBar: PreferredSize(
        preferredSize: Size(size.width , size.height*0.14),
        child: NavBar(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Text('Contact Us' , style: _style(40),),

                Row(
                  children: [
                    Expanded(
                        flex: 12,
                        child: Container(child: Image.asset('assets/img/contact.png' , fit: BoxFit.cover,))),
                    Column(
                      children: [
                        Text('Contact me from here', style: _style(30),),
                        SizedBox(height: 10,),
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

                            width: size.width*0.45,
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
                        )
                      ],
                    ),

                  ],


                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Footer()
                  ],
                )
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
