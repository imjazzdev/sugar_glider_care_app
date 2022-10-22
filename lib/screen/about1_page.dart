import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class About1 extends StatefulWidget {
  @override
  _About1State createState() => _About1State();
}

class _About1State extends State<About1> {
  @override
  Widget build(BuildContext context) {
    bool click = false;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.grey[900],
          ),
        ),
        backgroundColor: Colors.grey[50],
      ),
      body: Container(
        color: Colors.grey[50],
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          children: [
            Text(
              LocaleKeys.about1_about1title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ).tr(),
            Padding(
              padding: EdgeInsets.all(15),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/sg.jpg',
                    width: MediaQuery.of(context).size.width,
                  )),
            ),
            SizedBox(
              height: 15,
            ),

            Text(
              LocaleKeys.about1_about1_des,
              textAlign: TextAlign.justify,
            ).tr(),
            // Text('''Sugar glider dapat ditemukan di seluruh bagian utara dan timur daratan Australia, Tasmania, New Guinea dan beberapa pulau terkait, Kepulauan Bismarck , Kepulauan Louisiade , dan pulau-pulau tertentu di Indonesia , Kepulauan Halmahera di Maluku Utara. ''')
          ],
        ),
      ),
    );
  }
}
