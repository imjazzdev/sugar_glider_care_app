import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:testing/componen/item_darkmode.dart';
import 'package:testing/provider/dark_mode.dart';

class DarkModeMenu extends StatefulWidget {
  const DarkModeMenu({Key key}) : super(key: key);

  @override
  State<DarkModeMenu> createState() => _DarkModeMenuState();
}

class _DarkModeMenuState extends State<DarkModeMenu> {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    void onSelected(BuildContext context, ItemDarkmode item) {
      switch (item) {
        case ItemsDarkmode.itemDark:
          _themeChanger.setTheme(ThemeMode.dark);
          break;
        case ItemsDarkmode.itemLight:
          _themeChanger.setTheme(ThemeMode.light);
          break;
      }
    }

    return PopupMenuButton<ItemDarkmode>(
      onSelected: (item) => onSelected(context, item),
      itemBuilder: (context) => [...ItemsDarkmode.item.map(buildItem).toList()],
    );
  }

  PopupMenuItem<ItemDarkmode> buildItem(ItemDarkmode item) =>
      PopupMenuItem<ItemDarkmode>(
          value: item,
          child: Row(
            children: [
              Icon(
                item.icon,
                color: Colors.black,
                size: 20,
              ),
              SizedBox(
                width: 13,
              ),
              Text(item.text)
            ],
          ));
}
