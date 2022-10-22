import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
              title: Text("data", style: TextStyle(color: Colors.grey[900])),
              centerTitle: true,
               
              elevation: 2,
              pinned: true,
              expandedHeight: 150,
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                  icon: Icon(Icons.share_rounded),
                  onPressed: () {},
                  color: Colors.grey[900],
                )
              ],
              leading: IconButton(
                icon: Icon(Icons.menu_rounded),
                onPressed: () {},
                color: Colors.grey[900],
                iconSize: 27,
              ),
            );
  }
}