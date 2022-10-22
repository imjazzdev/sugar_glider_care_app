import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class MakananPage extends StatefulWidget {
  @override
  _MakananPageState createState() => _MakananPageState();
}

//'ca-app-pub-3940256099942544/6300978111'
class _MakananPageState extends State<MakananPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        title: Text(LocaleKeys.makanan,
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
        margin: EdgeInsets.only(left: 10, top: 10, right: 10),
        child: ListView(
          children: [
            Text(LocaleKeys.makananchild_attention,
                    style: TextStyle(fontWeight: FontWeight.bold))
                .tr(),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.makananchild_apel,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Image.asset(
                    'assets/apel.jpg',
                  ),
                  Text(
                    LocaleKeys.makananchild_apel_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.makananchild_pepaya,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Image.asset(
                    'assets/pepaya.jpg',
                  ),
                  Text(LocaleKeys.makananchild_pepaya_des,
                          textAlign: TextAlign.justify)
                      .tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.makananchild_wortel,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  Image.asset(
                    'assets/wortel.jpg',
                  ),
                  Text(
                    LocaleKeys.makananchild_wortel_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.brown[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.makananchild_madu,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  Image.asset(
                    'assets/madu.jpg',
                  ),
                  Text(
                    LocaleKeys.makananchild_madu_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.makananchild_uh,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  Image.asset(
                    'assets/uh.jpg',
                  ),
                  Text(
                    LocaleKeys.makananchild_uh_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.makananchild_jangkrik,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  Image.asset(
                    'assets/jangkrik.jpg',
                  ),
                  Text(
                    LocaleKeys.makananchild_jangkrik_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.brown[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.makananchild_kecoadubia,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  Image.asset(
                    'assets/kecoadubia.jpg',
                  ),
                  Text(
                    LocaleKeys.makananchild_kecoadubia_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.yellow[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.makananchild_telurrebus,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  Image.asset(
                    'assets/telurrebus.jpg',
                  ),
                  Text(
                    LocaleKeys.makananchild_telurrebus_des,
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
