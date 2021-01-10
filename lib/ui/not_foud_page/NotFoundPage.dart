import 'package:flutter/material.dart';


class NotFoundPage extends StatefulWidget {
  @override
  _NotFoundPageState createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all( 8),
      child: Center(
        child: Column(
          children: [
            Expanded(
              flex: 23,
              child: Container(

                child: Image.asset('assets/img/404.jpg' ,
                  fit: BoxFit.cover,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: FlatButton(    onPressed: (){
                Navigator.pushNamed(context, '/');
              },child: Text('Back to Home' ,

                style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),),  color: Colors.red,),
            ),
          ],
        ),
      ),
    );
  }
}
