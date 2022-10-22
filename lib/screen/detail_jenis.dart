import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:testing/componen/list_jenissg.dart';
import 'package:testing/services/firebase_storage.dart';

class Detail extends StatefulWidget {
  final String nama;
  final String gambar;
  final String genetik;
  final String price;
  final String description;
  final String imgNet1;
  final String imgNet2;
  Detail(
      {this.nama,
      this.gambar,
      this.genetik,
      this.price,
      this.description,
      this.imgNet1,
      this.imgNet2});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final list_imgNet_jenis = {
    'cg':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fcg.jpg?alt=media&token=c707b5ff-f5d1-4f38-88e7-2dcee556735d',
    'whiteface':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fwhiteface.jpg?alt=media&token=28d709cb-dda1-4b68-940a-6f8911bc6e84',
    'whitetip':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fwhitetip.jpg?alt=media&token=6aada4f0-382b-4002-9f31-3a8439529cf3',
    'ringtail':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fringtail.jpg?alt=media&token=9e9ec363-73f4-4a1d-bf06-acb6c784085f',
    'mosaic':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fmosaic.jpg?alt=media&token=bd752717-3b9d-4c18-ad6c-c4dec17e4804',
    'leu':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fleu.jpg?alt=media&token=3b5d5f86-ad27-45c5-8bd6-78112fb50536',
    'albino':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Falbino.jpg?alt=media&token=e8a4dca1-ee35-4bc7-97e4-47b234ffa68b',
    'platinum':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fplatinum.jpg?alt=media&token=0c70b3bf-e69b-4b55-9bd1-240418fe9c84',
    'blackbeauty':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fblackbeauty.jpg?alt=media&token=5c39a9cf-c580-478b-a06b-331b054df644',
    'creamino':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fcreamino.jpg?alt=media&token=0efa862a-48c4-4fa4-83bd-11c226cc6164',
    'piebald':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fpiebald.jpg?alt=media&token=a5951a76-8f42-4e19-aac2-ac5d23de943d',
    'tpm':
        'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Ftpm.jpg?alt=media&token=199cddc1-e872-455d-9cb9-14c95c81ee83',
  };

  @override
  Widget build(BuildContext context) {
    // FirebaseStorageServices storage = FirebaseStorageServices();

    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      // floatingActionButton: InkWell(
      //   onTap: () {
      //     Navigator.pop(context);
      //   },
      //   child: Positioned(
      //     top: 40,
      //     left: 40,
      //     child: Container(
      //       height: 50,
      //       width: 50,
      //       margin: EdgeInsets.all(15),
      //       decoration: BoxDecoration(
      //           color: Colors.grey[100],
      //           boxShadow: [
      //             BoxShadow(
      //                 blurRadius: 4,
      //                 spreadRadius: 1,
      //                 color: Color.fromARGB(255, 43, 41, 41),
      //                 offset: Offset(1, 1))
      //           ],
      //           borderRadius: BorderRadius.circular(20)),
      //       child: Center(
      //           child: Icon(
      //         Icons.arrow_back_ios_rounded,
      //         size: 30,
      //       )),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            Container(
              color: Colors.amber,
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.7,
              child: Hero(
                  tag: widget.nama,
                  child: Material(
                    child: InkWell(
                      child: CarouselSlider(
                        options: CarouselOptions(
                            aspectRatio: 1 / 1,
                            height: MediaQuery.of(context).size.height * 0.55,
                            autoPlay: false,
                            autoPlayInterval: Duration(seconds: 10),
                            autoPlayAnimationDuration: Duration(seconds: 5),
                            disableCenter: false,
                            pauseAutoPlayInFiniteScroll: true,
                            viewportFraction: 0.83,
                            enlargeCenterPage: true),
                        items: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              widget.gambar,
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),

                          SliderDetail(widget.imgNet1),

                          SliderDetail(widget.imgNet2)

                          // FutureBuilder(
                          //   future: storage.downloadURL(widget.gambar),
                          //   builder: (BuildContext context,
                          //       AsyncSnapshot<String> snapshot) {
                          //     if (snapshot.connectionState ==
                          //             ConnectionState.done &&
                          //         snapshot.hasData) {
                          //       return Container();
                          //     }
                          //     if (snapshot.connectionState ==
                          //             ConnectionState.waiting ||
                          //         !snapshot.hasData) {
                          //       return CircularProgressIndicator();
                          //     }
                          //     return Container();
                          //   },
                          // )
                        ],
                      ),
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.nama,
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                  ),
                  Text(widget.genetik),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[200]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          widget.description,
                          textAlign: TextAlign.justify,
                        ).tr()
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Price Range : ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(top: 15),
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.amber[100]

                                  // gradient: LinearGradient(
                                  //   begin: Alignment.centerLeft,
                                  //   end: Alignment.centerRight,
                                  //   colors: [
                                  //   Colors.amber[100],
                                  //   Colors.amber[50],
                                  //   Colors.amber[100],
                                  // ])
                                  ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.monetization_on_outlined,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.price,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )
                                ],
                              )),
                          Shimmer(
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.amber),
                              ),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [
                                    0.4,
                                    0.5,
                                    0.6
                                  ],
                                  colors: [
                                    Colors.amber.withOpacity(0),
                                    Colors.amber.withOpacity(0.5),
                                    Colors.amber.withOpacity(0)
                                  ]))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderDetail extends StatelessWidget {
  final String imgNet;
  SliderDetail(this.imgNet);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CachedNetworkImage(
          imageUrl: imgNet.toString(),
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width,
          placeholder: (context, url) => Container(
            color: Colors.grey[200],
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.image_rounded,
                  color: Colors.grey[400],
                  size: 300,
                ),
                CircularProgressIndicator(),
              ],
            ),
          ),
          errorWidget: (context, url, error) => Container(
            color: Colors.grey[200],
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.image_rounded,
                  color: Colors.grey[400],
                  size: 300,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wifi,
                      color: Colors.red,
                      size: 40,
                    ),
                    Text('Check your connection $error',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
