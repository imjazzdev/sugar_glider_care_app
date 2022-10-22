import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class MemandikanPerawatan extends StatefulWidget {
  @override
  _MemandikanPerawatanState createState() => _MemandikanPerawatanState();
}

class _MemandikanPerawatanState extends State<MemandikanPerawatan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        // title: Text('Memandikan', style: TextStyle(color: Colors.grey[800],)),
        leading: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            splashRadius: 28,
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(LocaleKeys.perawatanchild_memandikanchild_attention,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(LocaleKeys.perawatanchild_memandikanchild_attention_des)
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
                  Text(LocaleKeys.perawatanchild_memandikanchild_aNb,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(
                    LocaleKeys.perawatanchild_memandikanchild_aNb_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Image.asset('assets/mandi.jpg', height: 200, width: 200),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.perawatanchild_memandikanchild_langkah,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(
                    LocaleKeys.perawatanchild_memandikanchild_langkah_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
