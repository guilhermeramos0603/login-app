import 'package:app/view/datails_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/view/splash_screen.dart';
import 'package:app/view/login_screen.dart';
import 'package:app/view/home_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => const SplashScreen(),
  '/loginScreen': (BuildContext context) => LoginScreen(),
  '/homeScreen': (BuildContext context) => const HomeScreen(),
  '/detailsScreen': (BuildContext context) => const DetailsScreen(),
};
