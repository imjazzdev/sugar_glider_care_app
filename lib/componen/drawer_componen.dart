import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class DrawerComponen extends StatefulWidget {
  @override
  _DrawerComponenState createState() => _DrawerComponenState();
}

class _DrawerComponenState extends State<DrawerComponen> {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(     
      elevation: 5.0,
      child: ListView(
        children: [
          DrawerHeader(                        
            decoration: BoxDecoration(color: Colors.grey[50]),
            child: Container(
              
              decoration: BoxDecoration(
                color: Colors.yellow[50],
                shape: BoxShape.circle
              ),
              child: SvgPicture.asset(
                'assets/sugar-glider.svg',
                // height: 70,
                // width: 70,
              ),
            ),
          ),
          ListTileComp(
            img_location: 'assets/language.svg',
            judul: 'Language',
            routes: '/language',
          ),
          ListTileComp(
            img_location: 'assets/fruits.svg',
            judul: LocaleKeys.makanan,
            routes: '/food',
          ),
          ListTileComp(
            img_location: 'assets/jenis.svg',
            judul: LocaleKeys.jenis,
            routes: '/jenis',
          ),
          ListTileComp(
            img_location: 'assets/kangaroo.svg',
            judul: LocaleKeys.ternak,
            routes: '/breeding',
          ),
          ListTileComp(
            img_location: 'assets/care.svg',
            judul: LocaleKeys.perawatan,
            routes: '/perawatan',
          ),     
          ListTileComp(
            img_location: 'assets/gender.svg',
            judul: LocaleKeys.kelamin,
            routes: '/gender',
          ),
          ListTileComp(
            img_location: 'assets/penyakit.svg',
            judul: LocaleKeys.perawatanchild_penyakit,
            routes: '/penyakit',
          ),
          Divider(height: 10,thickness: 1,),
          ListTile(
            leading: SvgPicture.asset(
              'assets/info.svg',
              height: 30,
              width: 30,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/infopage');
            },
            title: Text(
              "Info",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

class ListTileComp extends StatefulWidget {
  final String routes;
  final String judul;
  final String img_location;

  ListTileComp({this.img_location, this.judul, this.routes});

  @override
  State<ListTileComp> createState() => _ListTileCompState();
}

class _ListTileCompState extends State<ListTileComp> {
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
    return ListTile(
      leading: Container(
        child: SvgPicture.asset(
          widget.img_location,
          height: 33,
          width: 33,
        ),
      ),
      title: Text(
        widget.judul,
        style: TextStyle(fontWeight: FontWeight.bold),
      ).tr(),
      onTap: () {
        UnityAds.showVideoAd(
                    placementId: AdsManager.interAdPlacementId,
                    onComplete: (placementId) => print("berhasil menampilkan iklan"),
                  );   
        Navigator.pushNamed(context, widget.routes);
      },
    );
  }
}
