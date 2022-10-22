import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, bottom: 10, right: 10, top: 5),
        child: Column(
          children: [
            ListAbout(
              color: Colors.blue[100],
              logo: 'assets/question.svg',
              txt1: LocaleKeys.about1_about1title,
              txt2: LocaleKeys.about1_about1caption,
              routes: '/about1',
            ),
            ListAbout(
              color: Colors.red[100],
              logo: 'assets/td.svg',
              txt1: LocaleKeys.about2_about2title,
              txt2: LocaleKeys.about2_about2caption,
              routes: '/about2',
            ),
            ListAbout(
              color: Colors.yellow[100],
              logo: 'assets/cage.svg',
              txt1: LocaleKeys.about3_about3title,
              txt2: LocaleKeys.about3_about3caption,
              routes: '/about3',
            ),
          ],
        ));
  }
}

class ListAbout extends StatefulWidget {
  final Color color;
  final String logo;
  final String txt1;
  final String txt2;
  final String routes;
  ListAbout({this.color, this.logo, this.txt1, this.txt2, this.routes});

  @override
  _ListAboutState createState() => _ListAboutState();
}

class _ListAboutState extends State<ListAbout> {
  // InterstitialAd interstitialAd;
  // bool isLoaded = false;
  @override
  void initState() {
    super.initState();
    UnityAds.init(
      gameId: AdsManager.appid,
    );
    UnityAds.load(placementId: AdsManager.interAdPlacementId);
  }

  // @override
  // void didChangeDependencies(){
  //   super.didChangeDependencies();
  //   InterstitialAd.load(
  //     adUnitId: AdsManager.interAdmob,
  //     request: AdRequest(),
  //     adLoadCallback: InterstitialAdLoadCallback(
  //       onAdLoaded: (ad){
  //         setState(() {
  //           isLoaded = true;
  //           this.interstitialAd = ad;
  //         });
  //         print("Ads Loaded");
  //       }, onAdFailedToLoad: (error){
  //         print("Interstitial Failed");
  //       },
  //     )
  //   );
  // }
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      autofocus: true,
      highlightColor: Colors.amber.shade100,
      // onLongPress: () {
      //   setState(() {
      //     click = !click;
      //   });
      // },
      onTap: () {
        // if(isLoaded){
        //   interstitialAd.show();
        // }
        UnityAds.showVideoAd(
          placementId: AdsManager.interAdPlacementId,
          onComplete: (placementId) => print("berhasil menampilkan iklan"),
        );
        Navigator.pushNamed(context, widget.routes);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.only(top: 5, bottom: 5, right: 10),
        margin: EdgeInsets.only(top: 5, bottom: 6),
        height: 80,
        decoration: BoxDecoration(
            color: widget.color, borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset(widget.logo),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.txt1,
                              style: TextStyle(fontWeight: FontWeight.w600))
                          .tr(),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            widget.txt2,
                            overflow: TextOverflow.ellipsis,
                          ).tr())
                    ],
                  )
                ],
              ),
              Container(
                height: 20,
                width: 20,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
