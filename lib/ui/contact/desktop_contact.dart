import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    var emailTitle ;
    var emailbody ;
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
            padding: const EdgeInsets.all(8.0),
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
                        Text('Contact me from here', style: _style(20),),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.white , Colors.white]
                              )
                          ),
                          width: size.width*0.45,
                          child:  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Form(
                              child:Column(
                                children: [
                                  TextFormField(
                                    controller: TitleController,
                                  ),
                                  TextFormField(
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
                                          emailbody = BodyController.text;
                                          emailTitle = TitleController.text;
                                        });
                                    openUrl('mailto:myusername@gmail.com?subject=$emailTitle&body=$emailbody');
                                  },child: Text('Send Email' ,
                                    style: TextStyle(color: Colors.white),) )),
                                ],
                              ) ,
                            ),
                          ),
                        )
                      ],
                    )
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
