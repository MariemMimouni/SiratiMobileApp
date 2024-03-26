import 'package:flutter/material.dart';

import '../Menu/drawer.widget.dart';
class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: MyDrawer(),
        appBar: AppBar(
          elevation: 10,
          title: Text('سيرتي'),
        ),
        body: Text('Contact!!')
    );
  }
}
