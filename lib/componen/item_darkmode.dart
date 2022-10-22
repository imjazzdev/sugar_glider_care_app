import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDarkmode {
  final String text;
  final IconData icon;
  const ItemDarkmode(this.text, this.icon);
}

class ItemsDarkmode {
  static const List<ItemDarkmode> item = [itemDark, itemLight];
  static const itemDark = ItemDarkmode('Dark', Icons.dark_mode_rounded);

  static const itemLight = ItemDarkmode('Light', Icons.light_mode_rounded);
}
