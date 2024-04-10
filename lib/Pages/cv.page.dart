import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../Menu/drawer.widget.dart';
class CvPage extends StatelessWidget {
  const CvPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 10,
          title: Text('CV'),
        ),
        body: SfPdfViewer.asset('images/MariemMimouni.pdf')
    );
  }
}
