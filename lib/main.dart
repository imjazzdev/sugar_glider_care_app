import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
import 'package:testing/provider/dark_mode.dart';
import 'package:testing/screen/about1_page.dart';
import 'package:testing/screen/about2_page.dart';
import 'package:testing/screen/about3_page.dart';
import 'package:testing/screen/breeding_page.dart';
import 'package:testing/screen/gender_page.dart';
import 'package:testing/screen/homepage.dart';
import 'package:testing/screen/info_page.dart';
import 'package:testing/screen/jenis_gridview.dart';
import 'package:testing/screen/language.dart';
import 'package:testing/screen/makanan_page.dart';
import 'package:testing/screen/memandikan_perawatan.dart';
import 'package:testing/screen/penyakit_perawatan.dart';
import 'package:testing/screen/perawatan_page.dart';
import 'package:testing/screen/potongkuku_perawatan.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey[50],
      statusBarIconBrightness: Brightness.dark));

  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('id'),
          Locale('en'),
          Locale('es'),
          Locale('fr'),
          Locale('it'),
          Locale('de'),
          Locale('pt'),
          Locale('ru'),
          Locale('th')
        ],
        path:
            'assets/translates', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChanger(ThemeMode.light)),
      ],
      child: Builder(builder: (context) {
        final themeMode = Provider.of<ThemeChanger>(context);
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: HomePage(),
          title: "Sugar Glider Care",
          // initialRoute: '/home',
          debugShowCheckedModeBanner: false,
          // themeMode: ThemeMode.dark,
          themeMode: themeMode.getTheme(),

          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(),
              brightness: Brightness.light),
          routes: {
            '/home': (context) => HomePage(),
            '/language': (context) => Language(),
            '/food': (context) => MakananPage(),
            '/jenis': (context) => JenisPage(),
            '/gender': (context) => GenderPage(),
            '/breeding': (context) => BreedingPage(),
            //about page
            '/about1': (context) => About1(),
            '/about2': (context) => About2(),
            '/about3': (context) => About3(),
            '/infopage': (context) => InfoPage(),
            //perawatan page
            '/perawatan': (context) => PerawatanPage(),
            '/memandikan': (context) => MemandikanPerawatan(),
            '/potongkuku': (context) => PotongkukuPerawatan(),
            '/penyakit': (context) => PenyakitPerawatan(),
          },
        );
      }),
    );
  }
}
