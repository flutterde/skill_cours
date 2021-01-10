import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mywebsite/routes/routes_name.dart';
import 'package:mywebsite/ui/about/about.dart';
import 'package:mywebsite/ui/contact/contact.dart';
import 'package:mywebsite/ui/home/hame.dart';
import 'package:mywebsite/ui/not_foud_page/NotFoundPage.dart';


class CustomRoute{
  static Route<dynamic> allRoutes(RouteSettings settings){
    switch(settings.name){
      case homeRoute:
        return MaterialPageRoute(builder: (_)=> Home());
      case aboutoute:
        return MaterialPageRoute(builder: (_)=> About());
      case contactRoute:
        return MaterialPageRoute(builder: (_)=> Contact());
    }
    return MaterialPageRoute(builder: (_)=> NotFoundPage());
  }
}