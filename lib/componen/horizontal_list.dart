import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  // @override
  // void initState() {
  //   super.initState();
  //   UnityAds.init(
  //     gameId: AdsManager.appid,
  //     listener: (state, args) => print('Init Listener: $state => $args'),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0, right: 0),
      // color: Colors.orange[50],
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 10,
          ),
          Catagory(
            img_location: 'assets/fruits.svg',
            title: LocaleKeys.makanan,
            color: Colors.amber[50],
            routes: '/food',
          ),
          Catagory(
            img_location: 'assets/jenis.svg',
            title: LocaleKeys.jenis,
            color: Colors.green[50],
            routes: '/jenis',
          ),
          Catagory(
            img_location: 'assets/kangaroo.svg',
            title: LocaleKeys.ternak,
            color: Colors.purple[50],
            routes: '/breeding',
          ),
          Catagory(
            img_location: 'assets/care.svg',
            title: LocaleKeys.perawatan,
            color: Colors.blue[50],
            routes: '/perawatan',
          ),
          Catagory(
            img_location: 'assets/gender.svg',
            title: LocaleKeys.kelamin,
            color: Colors.pink[50],
            routes: '/gender',
          ),
        ],
      ),
    );
  }
}

class Catagory extends StatefulWidget {
  final String img_location;
  final String title;
  final Color color;
  final String routes;
  Catagory({this.img_location, this.title, this.color, this.routes});

  @override
  _CatagoryState createState() => _CatagoryState();
}

class _CatagoryState extends State<Catagory> {
  @override
  void initState() {
    super.initState();
    UnityAds.init(
      gameId: AdsManager.appid,
      testMode: true,
    );
    UnityAds.load(placementId: AdsManager.interAdPlacementId);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7),
      width: 100,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        autofocus: true,
        highlightColor: Colors.amber.shade100,
        onTap: () {
          UnityAds.showVideoAd(
            placementId: AdsManager.interAdPlacementId,
            onComplete: (placementId) => print("berhasil menampilkan iklan"),
          );
          Navigator.pushNamed(context, widget.routes);
        },
        child: Card(
          elevation: 0.4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: widget.color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: SvgPicture.asset(
                  widget.img_location,
                  height: 50,
                  width: 50,
                ),
              ),
              Container(
                // color: Colors.purple,
                child: Center(
                    child: Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ).tr()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
