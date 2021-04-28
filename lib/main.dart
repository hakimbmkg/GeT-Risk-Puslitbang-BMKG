import 'package:flutter/material.dart';
import 'package:kegiatan_rekayasa_litbanggeo/splashscreen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'GeT-Risk Puslitbang BMKG';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primaryColor: Colors.white),
        home: SplashScreenPage(),
      );
}
