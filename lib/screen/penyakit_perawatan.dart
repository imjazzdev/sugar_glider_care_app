import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class PenyakitPerawatan extends StatefulWidget {
  @override
  _PenyakitPerawatanState createState() => _PenyakitPerawatanState();
}

class _PenyakitPerawatanState extends State<PenyakitPerawatan> {
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
            Text(LocaleKeys.perawatanchild_penyakitchild_attention,
                    style: TextStyle(fontWeight: FontWeight.bold))
                .tr(),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.perawatanchild_penyakitchild_hairloss,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Image.asset(
                    'assets/hairloss.jpg',
                  ),
                  Text(
                    LocaleKeys.perawatanchild_penyakitchild_hairloss_des,
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
                  Text(LocaleKeys.perawatanchild_penyakitchild_diare,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Image.asset(
                    'assets/diare.jpeg',
                    height: 170,
                  ),
                  Text(
                    LocaleKeys.perawatanchild_penyakitchild_diare_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.brown[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.perawatanchild_penyakitchild_katarak,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Image.asset(
                    'assets/katarak.jpg',
                  ),
                  Text(
                    LocaleKeys.perawatanchild_penyakitchild_katarak_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.perawatanchild_penyakitchild_kakibengkak,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Image.asset(
                    'assets/kakibengkak.jpg',
                  ),
                  Text(
                    LocaleKeys.perawatanchild_penyakitchild_kakibengkak_des,
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
