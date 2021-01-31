import 'package:flutter/material.dart';
import 'package:mywebsite/routes/custom_route.dart';
import 'package:mywebsite/ui/about/about.dart';
import 'package:mywebsite/ui/home/hame.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter for web',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: CustomRoute.allRoutes,
      initialRoute:'/',
    );
  }
}


