import 'package:flutter/material.dart';

class EqInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeT - Risk Puslitbang',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Earthquake Information'),
        ),
        body: Center(
          child: Text('About Pake'),
        ),
      ),
    );
  }
}
