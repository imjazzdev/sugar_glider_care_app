import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:provider/provider.dart';
import 'package:testing/provider/dark_mode.dart';

class DarkModePage extends StatelessWidget {
  const DarkModePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            FlatButton(
                onPressed: () {
                  _themeChanger.setTheme(ThemeMode.dark);
                },
                child: Text('Dark Mode')),
            FlatButton(
                onPressed: () {
                  _themeChanger.setTheme(ThemeMode.light);
                },
                child: Text('Light Mode'))
          ],
        ),
      )),
    );
  }
}
