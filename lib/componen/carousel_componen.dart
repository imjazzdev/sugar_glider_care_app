import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselComponen extends StatefulWidget {
  @override
  _CarouselComponenState createState() => _CarouselComponenState();
}

class _CarouselComponenState extends State<CarouselComponen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 15, right: 6, left: 6),
        // height: MediaQuery.of(context).size.height * 0.28,
        // width: MediaQuery.of(context).size.width * 0.8,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            disableCenter: false,
            pauseAutoPlayInFiniteScroll: false,
            viewportFraction: 2,
          ),
          items: [
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.only(right: 10, left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/carousel.jpg',
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.only(right: 10, left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/carousel1.jpg',
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.only(right: 10, left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/carousel1.1.png',
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.only(right: 10, left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/carousel1.2.jpg',
                    fit: BoxFit.cover,
                  ),
                )),
          ],
        ));
  }
}
