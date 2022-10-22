import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class About3 extends StatefulWidget {
  @override
  _About3State createState() => _About3State();
}

class _About3State extends State<About3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.grey[900],
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        color: Colors.grey[50],
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.about3_about3caption,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.yellow[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.about3_pilihkandang,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  Image.asset('assets/kandangsg.jpg'),
                  Text(
                    LocaleKeys.about3_pilihkandang_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.about3_aksesoris,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Image.asset('assets/aksesoris.jpg')),
                  Text(LocaleKeys.about3_aksesoris_des).tr(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.about3_alas,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Image.asset('assets/alaskandang.jpg'),
                  Text(LocaleKeys.about3_alas_des).tr(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
