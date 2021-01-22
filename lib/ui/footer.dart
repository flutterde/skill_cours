import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {

  @override
  Widget build(BuildContext context) {
    var now =DateTime.now();
    var formatter = DateFormat('y');
    String formattedDate = formatter.format(now);
    return Center(
      child: Container(

    //   width: MediaQuery.of(context).size.width*0.3,
        child: Column(
          children: [
            Row( children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.instagram , color: Colors.white,),
                onPressed: (){
                 openUrl("https://www.instagram.com/");
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter , color: Colors.white,),
                onPressed: (){
                  openUrl("https://www.twitter.com/");
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.facebook , color: Colors.white,),
                onPressed: (){
                  openUrl("https://www.facebook.com/");
                },
              ),

            ],),
            Container(
                width: MediaQuery.of(context).size.width*0.2,
                child: Divider( color: Colors.white,)
            ),
            Row( children: [
              Text('CopyRight© ${formattedDate}' , style: TextStyle(color: Colors.white),),

            ],),
          ],
        ),
      ),
    );
  }
  openUrl( String url){
  //  String url = 'https://www.skillshare.com/';
    launch(url);
  }
}
