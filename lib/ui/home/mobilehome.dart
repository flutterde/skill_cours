import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mywebsite/ui/footer.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Color(0xFF0E0C38),
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

      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 20,
              child: Container(child: Image.asset('assets/img/img1.png' , fit: BoxFit.cover,)),

            ),
            Text('build your own website using only flutter and dart ', style: TextStyle(color: Colors.white , fontSize: 30),),

            Text('Now build your own site with ease, without the need to learn many techniques,'
                ' and in only a short time you can build the most amazing website you want ',
              style: TextStyle(color: Colors.white),),
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
                ,child: FlatButton(    onPressed: (){},child: Text('Get Started' ,
              style: TextStyle(color: Colors.white),) )),
            //  Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Footer(),
              ],
            )
          ],
        ),
      ),

    );
  }
}