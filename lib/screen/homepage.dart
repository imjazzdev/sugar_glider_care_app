import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/componen/about.dart';
import 'package:testing/componen/carousel_componen.dart';
import 'package:testing/componen/drawer_componen.dart';
import 'package:testing/componen/horizontal_list.dart';
import 'package:testing/componen/masonry_componen.dart';
import 'package:testing/componen/sliverappbar_componen.dart';
import 'package:testing/provider/dark_mode.dart';
import 'package:testing/screen/darkmode_page.dart';
import 'package:testing/screen/language.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // PopupMenuItem<ItemDarkmode> buildItem(ItemDarkmode item) =>
    //     PopupMenuItem<ItemDarkmode>(
    //         value: item,
    //         child: Row(
    //           children: [
    //             Icon(
    //               item.icon,
    //               color: Colors.black,
    //               size: 20,
    //             ),
    //             SizedBox(
    //               width: 13,
    //             ),
    //             Text(item.text)
    //           ],
    //         ));

    // void onSelected(BuildContext context, ItemDarkmode item) {
    //   switch (item) {
    //     case ItemsDarkmode.itemDark:
    //       break;
    //     case ItemsDarkmode.itemLight:
    //       break;
    //   }
    // }

    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

//SCAFFOLD
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        title: Text(
          "Home",
          style: TextStyle(color: Colors.grey[900]),
        ),
        centerTitle: true,
        actions: [
          // DarkModeMenu(),
          // PopupMenuButton<ItemDarkmode>(
          //   onSelected: (item) => onSelected(context, item),
          //   itemBuilder: (context) =>
          //       [...ItemsDarkmode.item.map(buildItem).toList()],
          // ),
          // GestureDetector(
          //     child: Image.asset('assets/dark-mode.png'),
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => DarkModePage()));
          //     }),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Language()));
            },
            child: Container(
              margin: EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/language.svg',
                height: 38,
                width: 38,
              ),
            ),
          ),
        ],
        leading: IconButton(
          splashRadius: 25,
          icon: Icon(Icons.menu_rounded),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
          color: Colors.grey[900],
          iconSize: 27,
        ),
      ),
      drawer: DrawerComponen(),
      body: Container(
        child: CustomScrollView(
          slivers: [
            // MySliverAppBar(),
            SliverToBoxAdapter(child: CarouselComponen()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Catagory",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
            SliverToBoxAdapter(child: HorizontalList()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("About",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
            SliverToBoxAdapter(child: About()),
            // SliverToBoxAdapter(
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 10, right: 10),
            //     child: UnityBannerAd(
            //         size: BannerSize.leaderboard,
            //         placementId: AdsManager.bannerAdPlacementId,
            //         listener: (state, args) {
            //           print('Banner Listener: $state => $args');
            //         },
            //       ),
            //   ),
            // ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Photos",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
            SliverToBoxAdapter(child: MasonryComponen())
          ],
        ),
      ),
    );
  }
}
