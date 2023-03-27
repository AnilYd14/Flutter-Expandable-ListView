import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String tilte;

  const DetailPage(this.tilte, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(tilte),
        ),
      ),
    );
  }
}
