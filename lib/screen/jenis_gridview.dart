import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/screen/detail_jenis.dart';
import 'package:testing/locale/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class JenisPage extends StatefulWidget {
  @override
  _JenisPageState createState() => _JenisPageState();
}

class _JenisPageState extends State<JenisPage> {
  final list_item = [
    {
      "name": "Classic Grey",
      "img": 'assets/cg.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fcg.jpg?alt=media&token=c707b5ff-f5d1-4f38-88e7-2dcee556735d',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fcg1.jpg?alt=media&token=6066c45c-0c57-4fd1-99bf-22fdc46e7b6b',
      "genetik": 'Dominan',
      "price": "25 - 30"
    },
    {
      "name": "White Face",
      "img": 'assets/whiteface.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fwhiteface.jpg?alt=media&token=28d709cb-dda1-4b68-940a-6f8911bc6e84',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fwhiteface1.jpg?alt=media&token=e220cdfb-56c2-4885-b021-47a02f59fed2',
      "genetik": 'Dominan',
      "price": "30 - 40"
    },
    {
      "name": "White Tip",
      "img": 'assets/whitetip.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fwhitetip.jpg?alt=media&token=6aada4f0-382b-4002-9f31-3a8439529cf3',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fwhitetip1.jpg?alt=media&token=323cce00-9d9f-4c72-b643-f5afbeed9c8e',
      "genetik": 'Dominan',
      "price": "25 - 30"
    },
    {
      "name": "Ringtail",
      "img": 'assets/ringtail.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fringtail.jpg?alt=media&token=9e9ec363-73f4-4a1d-bf06-acb6c784085f',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fringtail1.jpg?alt=media&token=44b93968-fbf7-43f7-91d6-dda5efdb97d3',
      "genetik": 'Dominan',
      "price": "25 - 30"
    },
    {
      "name": "Mosaic",
      "img": 'assets/mosaic.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fmosaic.jpg?alt=media&token=bd752717-3b9d-4c18-ad6c-c4dec17e4804',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fmosaic1.jpg?alt=media&token=6b7e7e29-2fa9-4af1-9ff4-f538b84bd0c5',
      "genetik": 'Dominan',
      "price": "80 - 138"
    },
    {
      "name": "Leucistic",
      "img": 'assets/leu.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fleu.jpg?alt=media&token=3b5d5f86-ad27-45c5-8bd6-78112fb50536',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fleu1.jpg?alt=media&token=590b5193-8956-480b-8271-1b128f7c44d6',
      "genetik": 'Resesif',
      "price": "135 - 140"
    },
    {
      "name": "Albino",
      "img": 'assets/albino.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Falbino.jpg?alt=media&token=e8a4dca1-ee35-4bc7-97e4-47b234ffa68b',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Falbino1.jpg?alt=media&token=d48c281f-abf1-4e14-94f2-87ab2ebdc97c',
      "genetik": 'Resesif',
      "price": "300 - 413"
    },
    {
      "name": "Platinum",
      "img": 'assets/platinum.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fplatinum.jpg?alt=media&token=0c70b3bf-e69b-4b55-9bd1-240418fe9c84',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fplatinum1.jpg?alt=media&token=7b80ed58-cfd6-4b16-bf36-42cd3d9b10e4',
      "genetik": 'Resesif',
      "price": "172 - 200"
    },
    {
      "name": "Black Beauty",
      "img": 'assets/blackbeauty.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fblackbeauty.jpg?alt=media&token=5c39a9cf-c580-478b-a06b-331b054df644',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fblackbeauty1.jpg?alt=media&token=ce7fa7de-8672-4ed4-aee4-52730b82c661',
      "genetik": 'Resesif',
      "price": "240 - 250"
    },
    {
      "name": "Creamino",
      "img": 'assets/creamino.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fcreamino.jpg?alt=media&token=0efa862a-48c4-4fa4-83bd-11c226cc6164',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fcreamino1.jpg?alt=media&token=ccaf288d-a37c-4bae-8071-e58ff1cf0662',
      "genetik": 'Resesif',
      "price": "240 - 309"
    },
    {
      "name": "Piebald",
      "img": 'assets/piebal.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fpiebald.jpg?alt=media&token=a5951a76-8f42-4e19-aac2-ac5d23de943d',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Fpiebald1.jpg?alt=media&token=908442e0-585e-4b9f-99de-6899902cfe16',
      "genetik": 'Resesif',
      "price": "400 - 413"
    },
    {
      "name": "True Platinum Mosaic",
      "img": 'assets/tpm.jpg',
      "imgNet1":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Ftpm.jpg?alt=media&token=199cddc1-e872-455d-9cb9-14c95c81ee83',
      "imgNet2":
          'https://firebasestorage.googleapis.com/v0/b/sugar-glider-care-app.appspot.com/o/jenis%2Ftpm1.jpg?alt=media&token=56a34456-b87a-4d1d-b4d5-f4b2deaeca0b',
      "genetik": 'Resesif',
      "price": "480 - 490"
    },
  ];

  final List list_des_jenis = [
    LocaleKeys.jenischild_cg,
    LocaleKeys.jenischild_wf,
    LocaleKeys.jenischild_wt,
    LocaleKeys.jenischild_rt,
    LocaleKeys.jenischild_mo,
    LocaleKeys.jenischild_leu,
    LocaleKeys.jenischild_al,
    LocaleKeys.jenischild_plat,
    LocaleKeys.jenischild_bb,
    LocaleKeys.jenischild_creamino,
    LocaleKeys.jenischild_piebald,
    LocaleKeys.jenischild_tpm
  ];

  // final List<String> list_dec_jenis = [
  //   'Jenis Classic Grey memiliki bulu berwarna abu-abu dan garis berwarna hitam yang memanjang dari kepala sampai punggung, dan juga memiliki garis berwarna gelap yang menjulur dari mata hingga ke telinga ',
  //   'Jenis White Face memiliki corak yang mirip seperti Classic Grey namun dengan wajah putih dan tidak ada corak hitam didekat telinga-nya',
  //   "Jenis White Tip ini memiliki ciri bulu berwarna putih pada bagian ujung ekornya",
  //   "Jenis Ringtail memiliki bulu yang mirip seperti grey, namun terdapat bulu variasi berwarna hitam yang melingkar seperti cincin pada ekornya yang berwarna putih",
  //   "Jenis Mosaic memiliki perpaduan warna antara jenis Leucistic dan White face dengan bercak corak warna seperti terhapus sebagian pada tubuhnya",
  //   "Jenis Leucistic memiliki warna bulu yang putih polos dengan bola mata berwarna hitam",
  //   "Mirip seperti Leucistic, jenis Albino memiliki warna bulu yang putih dengan bola mata berwarna merah di karenakan ada kelainan genetik",
  //   "Jenis Platinum memiliki warna bulu abu-abu yang samar seperti pudar",
  //   "Jenis Black Beauty memiliki bulu yang mirip dengan Classic Grey namun berawarna gelap di sekujur tubuhnya dengan garis tebal di bagian wajahnya seolah menyatu dengan garis lingkar mata",
  //   "Jenis Creamino memiliki bulu berwarna cream keemasan dengan bola mata yang berwarna merah",
  //   "Jenis Piebald memiliki bentuk fisik seperti kombinasi antara jenis classic grey dan leucestic",
  //   "Jenis True Platinum Mosaic adalah salah satu morph sugar glider jenis mosaic",
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0.4,
        backgroundColor: Colors.grey[50],
        title: Text(LocaleKeys.jenis,
            style: TextStyle(
              color: Colors.grey[800],
            )).tr(),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          splashRadius: 28,
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey[900],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: GridView.builder(
            itemCount: list_item.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Jenis(
                jenis_nama: list_item[index]['name'],
                jenis_pic: list_item[index]['img'],
                jenis_imgNet1: list_item[index]['imgNet1'],
                jenis_imgNet2: list_item[index]['imgNet2'],
                jenis_genetik: list_item[index]['genetik'],
                jenis_price: list_item[index]['price'],
                // jenis_desc: list_dec_jenis[index],
                jenis_desc: list_des_jenis[index],
              );
            }),
      ),
    );
  }
}

class Jenis extends StatelessWidget {
  final jenis_nama;
  final jenis_pic;
  final jenis_imgNet1;
  final jenis_imgNet2;
  final jenis_genetik;
  final jenis_price;
  final jenis_desc;
  Jenis(
      {this.jenis_nama,
      this.jenis_pic,
      this.jenis_imgNet1,
      this.jenis_imgNet2,
      this.jenis_genetik,
      this.jenis_desc,
      this.jenis_price});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.all(10),
      child: Hero(
          tag: jenis_nama,
          child: Material(
            child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Detail(
                          nama: jenis_nama,
                          gambar: jenis_pic,
                          genetik: jenis_genetik,
                          price: jenis_price,
                          description: jenis_desc,
                          imgNet1: jenis_imgNet1,
                          imgNet2: jenis_imgNet2,
                        ))),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          jenis_pic,
                          // height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.5,
                          fit: BoxFit.cover,
                        )),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Text(
                        jenis_nama,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    )
                  ],
                )),
          )),
    );
  }
}
