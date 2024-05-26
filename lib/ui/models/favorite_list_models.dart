import 'package:flutter/cupertino.dart';

class FavoriteListModel {
  static List<String> itemNames = [
    'Naruto Shipudden',
    'Attack On Titan',
    'Haikyuu',
    'Boruto Two Blue Vortex',
    'Kaiju No.8',
    'Kanojo Okarishimasu',
  ];

  static List<String> itemSubtitle = [
    'ini adalah anime yang bagus',
    'ini adalah anime yang bagus',
    'ini adalah anime yang bagus',
    'ini adalah anime yang bagus',
    'ini adalah anime yang bagus',
    'ini adalah anime yang bagus',
  ];

  static List<String> itemImages = [
    ('assets/image/naruto.png'),
    ('assets/image/aot.jpg'),
    ('assets/image/haikyuu.jpg'),
    ('assets/image/boruto.jpg'),
    ('assets/image/kaiju.jpg'),
    ('assets/image/kanojo.jpg'),
  ];

  Item getById(int id) => Item(
        id,
        itemNames[id % itemNames.length],
        itemSubtitle[id % itemSubtitle],
        itemImages[id % itemImages],
      );

  Item getByPosition(int position) {
    return getById(position);
  }

  class Item {
    final int id;
    final String name;
    final String subtitle;
    final String image;

    const Item(
      this.id,
      this.name,
      this.subtitle,
      this.image,
    );
    @override
    int get hashCode => id;
    
    @override
    bool operator ==(Object other) => other is Item && other.id == id;
  }
}
