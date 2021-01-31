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
        preferredSize: Size(size.width, size.height * 0.14),
        child: NavBar(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                Text(
                  'ABOUT',
                  style: _style(40),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 12,
                        child: Container(
                            child: Image.asset(
                          'assets/img/development.png',
                          fit: BoxFit.cover,
                        ))),
                    Expanded(
                      flex: 12,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Web support for Flutter',
                                style: _style(30),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "In addition to mobile apps, Flutter supports the generation of web content rendered using standards-based"
                                "web technologies:  HTML,CSS and JavaScript . With web support , you can compile existing flutter code written in dart into "
                                "a client experience that cn be embedded in the browser and deployed to any web server . you can use all the eatures of flutter and you don't need a browser plug-in  ",
                                style: _style(20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 12,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'What i need for Learn flutter web ?',
                                style: _style(30),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "If you have previously used Flutter to program mobile applications, it will be very easy for you, but if you are not, you will need some information about Dart and Flutter, as well as for a computer with fairly good specifications, at least 4 GB RAM.",
                                style: _style(20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 12,
                        child: Container(
                            child: Image.asset(
                          'assets/img/about.png',
                          fit: BoxFit.cover,
                        ))),
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

  _style(double size) {
    return GoogleFonts.mcLaren(fontSize: size, color: Colors.white);
  }
}
