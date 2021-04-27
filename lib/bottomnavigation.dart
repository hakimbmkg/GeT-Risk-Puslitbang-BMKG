import 'package:flutter/material.dart';
import 'package:kegiatan_rekayasa_litbanggeo/myrisk/myriskpage.dart';
import 'package:kegiatan_rekayasa_litbanggeo/about/aboutpage.dart';
import 'package:kegiatan_rekayasa_litbanggeo/wherewego/wherewego.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNavPage(),
    title: 'GeT - Risk Puslitbang BMKG',
  ));
}

class BottomNavPage extends StatefulWidget {
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedTabIndex = 0;
//  tap navbar
  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

//
  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      MyRiskPage(),
      AboutPage(),
      WhereWeGoPage(),
    ];
    //
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.lens),
        title: Text('Myrisk'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.assistant_direction),
        title: Text('WhereWeGo'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.error_outlined),
        title: Text('About'),
      ),
    ];
    //
    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );
    //
    return Scaffold(
      body: Center(
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
