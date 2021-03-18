import 'package:flutter/material.dart';
import './beranda.dart' as beranda;
import './produk.dart' as produk;

void main() {
  runApp(new MaterialApp(
    title: "tab bar",
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller; //widget untuk tabbar
  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new beranda
              .beranda(), // manggil kelas beranda inget import kelasnya dulu diatas
          new produk.produk(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueGrey,
        child: new TabBar(controller: controller, tabs: <Widget>[
          // widget tabs biar bisa ngisiin isi tabnya
          new Tab(icon: new Icon(Icons.home)),
          new Tab(
            icon: new Icon(Icons.list),
          ),
        ]),
      ),
    );
  }
}
