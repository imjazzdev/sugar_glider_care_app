import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0.3,
        backgroundColor: Colors.grey[50],
        
        leading: IconButton(
                icon: Icon(Icons.menu_rounded),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (BuildContext context) =>
                  //       DrawerComponen())
                  //   );
                },
                color: Colors.grey[900],
                iconSize: 27,
              ),
        
      );
  }
}