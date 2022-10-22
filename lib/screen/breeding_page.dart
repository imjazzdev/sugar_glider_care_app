import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class BreedingPage extends StatefulWidget {
  @override
  _BreedingPageState createState() => _BreedingPageState();
}

class _BreedingPageState extends State<BreedingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        title: Text(LocaleKeys.ternak,
            style: TextStyle(
              color: Colors.grey[800],
            )).tr(),
        leading: IconButton(
          splashRadius: 25,
          icon: Icon(Icons.arrow_back_ios_rounded),
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
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(LocaleKeys.ternakchild_attention).tr(),
                ],
              ),
            ),
            Image.asset(
              'assets/breeding.jpg',
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.ternakchild_penjodohan,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(
                    LocaleKeys.ternakchild_penjodohan_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.ternakchild_kawin,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(LocaleKeys.ternakchild_kawin_des,
                          textAlign: TextAlign.justify)
                      .tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.ternakchild_hamil,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  Text(
                    LocaleKeys.ternakchild_hamil_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.ternakchild_melahirkan,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  Text(
                    LocaleKeys.ternakchild_melahirkan_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    'In Pouch(IP)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    LocaleKeys.ternakchild_ip_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    'Out Pouch(OP)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    LocaleKeys.ternakchild_op_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    'Out Of Pouch(OOP)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    LocaleKeys.ternakchild_oop_des,
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
