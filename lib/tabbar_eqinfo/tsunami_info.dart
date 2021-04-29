import 'package:flutter/material.dart';

class TsunamiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeT - Risk Puslitbang BMKG',
      home: Scaffold(
        body: Center(
          child: Text('Tsunami'),
        ),
      ),
    );
  }
}
