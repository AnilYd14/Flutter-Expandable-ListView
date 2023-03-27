class BasicTile {
  final String tileName;
  final List<BasicTile> tiles;

  const BasicTile({
    required this.tileName,
    this.tiles = const [],
  });
}

final basicTiles = <BasicTile>[
  const BasicTile(tileName: 'Fruits', tiles: [
    BasicTile(tileName: 'Apple'),
    BasicTile(tileName: 'Mangoge'),
    BasicTile(tileName: 'Grapes')
  ]),
  const BasicTile(tileName: 'States', tiles: [
    BasicTile(tileName: 'Uttar PRades'),
    BasicTile(tileName: 'Punjab')
  ])
];
