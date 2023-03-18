import 'package:app/service/prefs_service.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.wait(
            [PrefsService.isAuth(), Future.delayed(const Duration(seconds: 3))])
        .then((value) => value[0]
            ? Navigator.of(context).pushReplacementNamed('/homeScreen')
            : Navigator.of(context).pushReplacementNamed('/loginScreen'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      child: const Center(
          child: CircularProgressIndicator(
        color: Colors.blue,
      )),
    );
  }
}
