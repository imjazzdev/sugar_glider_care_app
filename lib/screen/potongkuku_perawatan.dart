import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class PotongkukuPerawatan extends StatefulWidget {
  @override
  _PotongkukuPerawatanState createState() => _PotongkukuPerawatanState();
}

class _PotongkukuPerawatanState extends State<PotongkukuPerawatan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        // title: Text('Memandikan', style: TextStyle(color: Colors.grey[800],)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          splashRadius: 28,
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey[900],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(LocaleKeys.perawatanchild_potongkukuchild_attention,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(LocaleKeys.perawatanchild_potongkukuchild_attention_des)
                      .tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(LocaleKeys.perawatanchild_potongkukuchild_aNb,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(
                    LocaleKeys.perawatanchild_potongkukuchild_aNb_des,
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
                  Text(LocaleKeys.perawatanchild_potongkukuchild_langkah,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(
                    LocaleKeys.perawatanchild_potongkukuchild_langkah_des1,
                    textAlign: TextAlign.justify,
                  ).tr(),
                  Image.asset(
                    'assets/panduanpotongkuku.jpg',
                    height: 200,
                    width: 200,
                  ),
                  Text(LocaleKeys.perawatanchild_potongkukuchild_langkah_des2,
                          textAlign: TextAlign.justify)
                      .tr(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
