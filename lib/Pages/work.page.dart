import 'package:flutter/material.dart';

import '../Menu/drawer.widget.dart';
class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          elevation: 10,
          title: Text('سيرتي'),
        ),
        body: Text('Work')
    );
  }
}
