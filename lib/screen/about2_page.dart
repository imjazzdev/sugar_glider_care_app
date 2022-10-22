import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class About2 extends StatefulWidget {
  @override
  _About2State createState() => _About2State();
}

class _About2State extends State<About2> {
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
            Text(
              LocaleKeys.about2_about2caption,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ).tr(),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(
                    LocaleKeys.about2_komitmen,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  Text(
                    LocaleKeys.about2_komitmen_des,
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
                  color: Colors.yellow[50],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text(LocaleKeys.about2_komunitas,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(
                    LocaleKeys.about2_komunitas_des,
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
                  Text(LocaleKeys.about2_tips,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(
                    LocaleKeys.about2_tips_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
//             Text(
//               '''
//   Carilah breeder atau peternak SG yang terpercaya .Disarankan, anda lebih baik datang langsung kerumah breeder atau penjual agar anda dapat langsung melihat sebelum diadopsi. Mintalah kepada penjual perlihatkan gigi SG apakah lengkap atau dipotong, banyak SG yg giginya dipotong dengan tujuan agar terlihat jinak tapi SG yang giginya dipotong kebanyakan sering mengalami Abses sehingga nafsu makannya menghilang, akibatnya SG akan cepat mengalami kematian.

// Anda dapat mengadopsi SG yang sudah berumur 3 bulan karena sudah dapat dikatakan mandiri. Dan jika mengadopsi SG di umur yang masih muda maka SG akan cepat dengan mudah bonding kepada owner-nya
//             ''',
//               textAlign: TextAlign.justify,
//             ),
          ],
        ),
      ),
    );
  }
}
