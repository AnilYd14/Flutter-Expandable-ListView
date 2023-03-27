import 'package:exanded_list_view/detail_page.dart';
import 'package:exanded_list_view/model/basic_tile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Expandable List')),
        body: ListView(
          children: basicTiles.map(buildTile).toList(),
        ),
      ),
    );
  }

  Widget buildTile(BasicTile basicTile) {
    if (basicTile.tiles.isEmpty) {
      return ListTile(
        title: Text(basicTile.tileName),
        // onTap: () => Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => DetailPage(basicTile.tileName))),
      );
    } else {
      return ExpansionTile(
        title: Text(basicTile.tileName),
        children: basicTile.tiles.map((tiles) => buildTile(tiles)).toList(),
      );
    }
  }
}
