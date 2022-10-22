import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:testing/locale/locale_keys.g.dart';


class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        title: Text('Language',
            style: TextStyle(
              color: Colors.grey[800],
            )),
        leading: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Builder(
        builder: (context) => ListView(
          children: [
            ListTile(          
              onTap: () async {
                context.setLocale(Locale('id'));
                showFloatingSnackbar(context);
              },
              title: Text('Indonesia', style: TextStyle(fontWeight: FontWeight.w600),),
              leading: SvgPicture.asset(
                'assets/indonesia.svg',
                height: 36,
                width: 36,
              ),
            ),
            ListTile(
              onTap: () async {
                context.setLocale(Locale('en'));
                showFloatingSnackbar(context);
              },
              title: Text('English', style: TextStyle(fontWeight: FontWeight.w600)),
              leading: SvgPicture.asset(
                'assets/english.svg',
                height: 36,
                width: 36,
              ),
            ),
            
            ListTile(
              onTap: () async {
                context.setLocale(Locale('es'));
                showFloatingSnackbar(context);
              },
              title: Text('Espanol', style: TextStyle(fontWeight: FontWeight.w600)),
              leading: SvgPicture.asset(
                'assets/spain.svg',
                height: 36,
                width: 36,
              ),
            ),
            ListTile(
              onTap: () async {
                context.setLocale(Locale('fr'));
                showFloatingSnackbar(context);
              },
              title: Text('Français', style: TextStyle(fontWeight: FontWeight.w600)),
              leading: SvgPicture.asset(
                'assets/france.svg',
                height: 36,
                width: 36,
              ),
            ),
            //gggjk
            ListTile(
              onTap: () async {
                context.setLocale(Locale('it'));
                showFloatingSnackbar(context);
              },
              title: Text('Italia', style: TextStyle(fontWeight: FontWeight.w600)),
              leading: Image.asset(
                'assets/italy.png',
                height: 36,
                width: 36,
              ),
            ),
            ListTile(
              onTap: () async {
                context.setLocale(Locale('de'));
                showFloatingSnackbar(context);
              },
              title: Text('Germany', style: TextStyle(fontWeight: FontWeight.w600)),
              leading: Image.asset(
                'assets/germany.png',
                height: 36,
                width: 36,
              ),
            ),
            ListTile(
              onTap: () async {
                context.setLocale(Locale('pt'));
                showFloatingSnackbar(context);
              },
              title: Text('Português', style: TextStyle(fontWeight: FontWeight.w600)),
              leading: Image.asset(
                'assets/portugal.png',
                height: 36,
                width: 36,
              ),
            ),
            ListTile(
              onTap: () async {
                context.setLocale(Locale('ru'));
                showFloatingSnackbar(context);
              },
              title: Text('Россия', style: TextStyle(fontWeight: FontWeight.w600)),
              leading: Image.asset(
                'assets/rusia.png',
                height: 36,
                width: 36,
              ),
            ),
            ListTile(
              onTap: () async {
                context.setLocale(Locale('th'));
                showFloatingSnackbar(context);
              },
              title: Text('ประเทศไทย', style: TextStyle(fontWeight: FontWeight.w600)),
              leading: Image.asset(
                'assets/thailand.png',
                height: 36,
                width: 36,
              ),
            ),
            
            // ListTile(
            //   onTap: () async {
            //     context.setLocale(Locale('cn'));
            //     showFloatingSnackbar(context);
            //   },
            //   title: Text('China', style: TextStyle(fontWeight: FontWeight.w600)),
            //   leading: SvgPicture.asset(
            //     'assets/france.svg',
            //     height: 36,
            //     width: 36,
            //   ),
            // ),
            
          ],
        ),
      ),
    );
  }
}

void showFloatingSnackbar (BuildContext context) {
  final snackbar = SnackBar(
    content: Text('language has been changed!', textAlign: TextAlign.center, style: TextStyle(fontStyle: FontStyle.italic),),
    backgroundColor: Colors.grey[700],
    shape: StadiumBorder(),
    behavior: SnackBarBehavior.floating,
    duration: Duration(seconds: 2),
    width: 225,
    elevation: 3,

  );
  Scaffold.of(context).showSnackBar(snackbar);
}