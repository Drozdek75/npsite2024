import 'package:flutter/material.dart';

import 'package:npsite/screens/dashboard.dart';
import 'package:npsite/screens/filter.dart';
import 'package:npsite/screens/menu.dart';
import 'package:npsite/screens/splash.dart';
import 'package:npsite/screens/upgrade.dart';

class generateRouter {

   static Route<dynamic> generateRoute(RouteSettings settings) {
        switch(settings.name) {
          case upgrade.path:
             return buildRoute(const upgrade(), settings: settings);
          case splash.path:
            return buildRoute(const splash(), settings: settings);
          case dashboard.path:
            return buildRoute(const dashboard(), settings: settings);
          case menu.path:
            return buildRoute(menu(), settings: settings);
          case filter.path:
            return buildRoute(filter(), settings: settings);
          default:
            return buildRoute(upgrade(), settings: settings); 
        }
        
   }

   static MaterialPageRoute buildRoute(Widget child, {required RouteSettings settings}) {
          return MaterialPageRoute(builder: (context) => child, settings: settings);
   }

}