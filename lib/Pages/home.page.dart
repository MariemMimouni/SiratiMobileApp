import 'package:flutter/material.dart';
import 'package:sirati_app/Menu/drawer.widget.dart';
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 10,
        title: Text('سيرتي'),
      ),
      body: Text('Coming soonn!!')
    );
  }
}
