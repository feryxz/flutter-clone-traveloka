import 'package:flutter/material.dart';
import 'package:traveloka/pages/awal.dart';
import 'package:traveloka/pages/inbox.dart';
import 'package:traveloka/pages/pemesanan.dart';
import 'package:traveloka/pages/profile.dart';
import 'package:traveloka/pages/simpan.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _layoutPage = [Awal(), Simpan(), Pemesanan(), Inbox(), Profile()];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Awal')),
          BottomNavigationBarItem(
              icon: Icon(Icons.save), title: Text('Simpan')),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_agenda), title: Text('Pemesanan')),
          BottomNavigationBarItem(
              icon: Icon(Icons.inbox), title: Text('Inbox')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Akun Saya')),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
