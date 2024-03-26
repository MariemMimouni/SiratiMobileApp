import 'package:flutter/material.dart';

import '../Menu/drawer.widget.dart';
class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          elevation: 10,
          title: Text('سيرتي'),
        ),
        body: Text('Skills!!')
    );
  }
}
