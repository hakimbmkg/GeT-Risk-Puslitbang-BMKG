import 'package:flutter/material.dart';

class IndoEqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeT - Risk Puslitbang BMKG',
      home: Scaffold(
        body: Center(
          child: Text('Gempa Indonesia'),
        ),
      ),
    );
  }
}
