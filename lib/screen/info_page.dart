import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class InfoPage extends StatefulWidget {
  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  void initState() {
    super.initState();
    UnityAds.init(
      gameId: AdsManager.appid,
    );
    UnityAds.load(placementId: AdsManager.rewardAdPlacementId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 90,
                  // ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 2,
                            spreadRadius: 0.1,
                            offset: Offset(0, 3)),
                      ],

                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/pp.jpg',
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Text("Developer"),
                  Text(
                    "I'zaaz Akhdan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("Versi"),
                  FutureBuilder(
                    future: PackageInfo.fromPlatform(),
                    builder: (BuildContext context,
                        AsyncSnapshot<PackageInfo> snapshot) {
                      if (snapshot.hasData)
                        return Text(snapshot.data.version,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.blue));
                      return Container();
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.amber.shade200,
                          onPrimary: Colors.black87),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/prize.png',
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            LocaleKeys.donate,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ).tr()
                        ],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                content: Text(
                                  LocaleKeys.donate_des,
                                  style: TextStyle(fontSize: 16),
                                ).tr(),
                                actions: [
                                  // GestureDetector(
                                  //   onTap: (){
                                  //     UnityAds.showVideoAd(
                                  //       placementId: AdsManager.rewardAdPlacementId,
                                  //       listener: (state, args) =>
                                  //           print('Reward Video Listener: $state => $args'),
                                  //     );
                                  //     Navigator.pop(context);
                                  //   },
                                  //   child: Container(
                                  //     padding: EdgeInsets.all(5),
                                  //     decoration: BoxDecoration(
                                  //       borderRadius: BorderRadius.circular(10),
                                  //       color: Colors.grey[200]
                                  //     ),
                                  //     height: 50,
                                  //     width: 100,
                                  //     child: Row(
                                  //       mainAxisAlignment: MainAxisAlignment.end,
                                  //       children: [
                                  //         Text("Donate", style: TextStyle(fontWeight: FontWeight.bold),)
                                  //       ],
                                  //     )
                                  //   ),
                                  // ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(LocaleKeys.cancel).tr()),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.amber.shade200,
                                          onPrimary: Colors.black87),
                                      onPressed: () {
                                        UnityAds.showVideoAd(
                                          placementId:
                                              AdsManager.rewardAdPlacementId,
                                          onFailed: (placementId, error,
                                                  errorMessage) =>
                                              print(
                                                  'Iklan gagal karna $errorMessage'),
                                        );
                                        Navigator.pop(context);
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/prize.png',
                                            height: 25,
                                            width: 25,
                                          ),
                                          Text(LocaleKeys.donate,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold))
                                              .tr()
                                        ],
                                      )),
                                ],
                              );
                            });
                      }),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.grey[400],
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Copyright(c) 2021 Jazzdev",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    // fontStyle: FontStyle.italic,
                    color: Colors.grey[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
