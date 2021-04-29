import 'package:flutter/material.dart';
import 'package:kegiatan_rekayasa_litbanggeo/tabbar_eqinfo/indo_eq.dart';
import 'package:kegiatan_rekayasa_litbanggeo/tabbar_eqinfo/local_eq.dart';
import 'package:kegiatan_rekayasa_litbanggeo/tabbar_eqinfo/tsunami_info.dart';

class EqInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeT - Risk Puslitbang BMKG',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text('GeT Info'),
              bottom: TabBar(
                tabs: [
                  Tab(text: "Gempabumi < 10KM"),
                  Tab(text: "Tsunami"),
                  Tab(text: "Gempabumi Indo"),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                LocalEqPage(),
                TsunamiPage(),
                IndoEqPage(),
              ],
            )),
      ),
    );
  }
}
