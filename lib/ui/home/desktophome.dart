import 'package:flutter/material.dart';
import 'package:mywebsite/ui/footer.dart';
import 'package:mywebsite/ui/navbar.dart';

class DesktopHome extends StatefulWidget {
  @override
  _DesktopHomeState createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0E0C38),
      appBar: PreferredSize(
        preferredSize: Size(size.width , size.height*0.14),
        child: NavBar(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 14 ,
                      child: Container(
                        child: Image.asset('assets/img/img1.png'),
                      ),
                    ),
                    Expanded(
                      flex: 14 ,
                      child: Container(
                        child: Column(
                          children: [
                            Text('build your own website using only flutter and dart  ' ,
                              style: TextStyle(color: Colors.white , fontSize: 30),),
                            SizedBox(height: 20,),
                            Text('Now build your own site with ease, without the need to learn many techniques,'
                                ' and in only a short time you can build the most amazing website you want ',
                              style: TextStyle(color: Colors.white),),
                            SizedBox(height: 20,),
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

                          ],
                        ),
                      ),
                    ),
                  ],

                ),

              ],
            ),
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
    );
  }
}
