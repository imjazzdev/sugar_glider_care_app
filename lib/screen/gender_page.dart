import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class GenderPage extends StatefulWidget {
  @override
  _GenderPageState createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        title: Text(LocaleKeys.kelamin,
            style: TextStyle(
              color: Colors.grey[800],
            )).tr(),
        leading: IconButton(
          splashRadius: 28,
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey[900],
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: ListView(
          children: [
            Text(LocaleKeys.kelaminchild_attention,
                    style: TextStyle(fontWeight: FontWeight.bold))
                .tr(),
            Container(
              child: Image.asset(
                'assets/gender.jpg',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(LocaleKeys.kelaminchild_jantan,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(
                    LocaleKeys.kelaminchild_jantan_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                  SizedBox(height: 10),
                  Text(LocaleKeys.kelaminchild_betina,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .tr(),
                  Text(
                    LocaleKeys.kelaminchild_betina_des,
                    textAlign: TextAlign.justify,
                  ).tr(),
                  // GestureDetector(
                  //   onTap: (() {
                  //     setState(() {
                  //       click = !click;
                  //       print('klik');
                  //     });
                  //   }),
                  //   child: AnimatedContainer(
                  //       height: 50,
                  //       width: click ? 50 : 100,
                  //       color: click ? Colors.blue : Colors.red,
                  //       duration: Duration(milliseconds: 500)),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
