import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:testing/componen/constants.dart';

class MasonryComponen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> cards =List.generate(IMAGE_LIST.length, (i) => Grid(imgsrc: IMAGE_LIST[i],));

    return Container(
    child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MasonryGrid(
                  column: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: cards,
                  ),
            ),
    );
  }
}

class Grid extends StatelessWidget {
final String imgsrc;
Grid({this.imgsrc});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(imgsrc),
      ),
    );
  }
}
