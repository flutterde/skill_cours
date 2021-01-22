import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mywebsite/ui/footer.dart';
import 'package:mywebsite/ui/navbar.dart';

class DesktopAbout extends StatefulWidget {
  @override
  _DesktopAboutState createState() => _DesktopAboutState();
}

class _DesktopAboutState extends State<DesktopAbout> {
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                Text('ABOUT US' , style: _style(40),),
                Row(
                  children: [
                    Expanded(
                        flex: 12,
                        child: Container(child: Image.asset('assets/img/about.png' , fit: BoxFit.cover,))),
                    Expanded(
                      flex: 12,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('My title' , style: _style(30),),
                            const SizedBox(height: 20,),
                            Text('Now build your own site with ease, without the need to learn many techniques,'
                                ' and in only a short time you can build the most amazing website you want' , style: _style(20),),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    color: Colors.white,

                  ),
                ),
                Row(
                  children: [

                    Expanded(
                      flex: 12,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('My title' , style: _style(30),),
                            const SizedBox(height: 20,),
                            Text('Now build your own site with ease, without the need to learn many techniques,'
                                ' and in only a short time you can build the most amazing website you want' , style: _style(20),),
                          ],
                        ),

                      ),
                    ),
                    Expanded(
                        flex: 12,
                        child: Container(child: Image.asset('assets/img/about.png' , fit: BoxFit.cover,))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
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
