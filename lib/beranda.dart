import 'package:flutter/material.dart';
import './menuDrawer.dart' as menuDrawer;

class beranda extends StatefulWidget {
  @override
  _berandaState createState() => _berandaState();
}

class _berandaState extends State<beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Beranda Aplikasi"),
          ),
          actions: [Icon(Icons.search)],
        ),
        backgroundColor: Colors.black87,
        drawer: menuDrawer.Menudrawer(),
        body: Container(
            child: ListView(children: <Widget>[
          Column(children: <Widget>[
            Card(
                child: Column(
              children: [
                Image(image: AssetImage("assets/appimage/pc gaming.jpg")),
                Text(
                  "PC GAMING SET ",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            ))
          ]),
        ])));
  }
}
