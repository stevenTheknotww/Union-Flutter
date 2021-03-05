import 'package:flutter/material.dart';
import 'package:union_flutter/page/background_alias_page.dart';
import 'package:union_flutter/page/border_alias_page.dart';
import 'package:union_flutter/page/brand_alias_page.dart';
import 'package:union_flutter/page/buttons_page.dart';
import 'package:union_flutter/page/color_page.dart';
import 'package:union_flutter/page/cta_alias_page.dart';
import 'package:union_flutter/page/cta_fab_page.dart';
import 'package:union_flutter/page/dialogs_page.dart';
import 'package:union_flutter/page/divider_alias_page.dart';
import 'package:union_flutter/page/elevation_page.dart';
import 'package:union_flutter/page/font_details_page.dart';
import 'package:union_flutter/page/icon_alias_page.dart';
import 'package:union_flutter/page/iconography_page.dart';
import 'package:union_flutter/page/large_card_page.dart';
import 'package:union_flutter/page/layout_page.dart';
import 'package:union_flutter/page/navigation_page.dart';
import 'package:union_flutter/page/primary_palette_page.dart';
import 'package:union_flutter/page/ripple_overlay_page.dart';
import 'package:union_flutter/page/secondary_palette_page.dart';
import 'package:union_flutter/page/text_alias_page.dart';
import 'package:union_flutter/page/vendor_cards_page.dart';

import 'lib/union_theme.dart';
import 'main.dart';
import 'page/typography_page.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());

  // // 设置状态栏颜色
  // if (Platform.isAndroid) {
  //   SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
  //     statusBarColor: AppColors.backgroundDark,
  //   );
  //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  // }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Union App Flutter',
        // showPerformanceOverlay: true,
        // debugShowMaterialGrid: true,
        // showSemanticsDebugger: true,
        theme: UnionTheme.lightTheme,
        darkTheme: UnionTheme.darkTheme,
        home: Main(),
        routes: <String, WidgetBuilder>{
          TypographyPage.routeName: (context) => TypographyPage(),
          FontDetailsPage.routeName: (context) => FontDetailsPage(),
          ColorPage.routeName: (context) => ColorPage(),
          PrimaryPalettePage.routeName: (context) => PrimaryPalettePage(),
          SecondaryPalettePage.routeName: (context) => SecondaryPalettePage(),
          BrandAliasPage.routeName: (context) => BrandAliasPage(),
          BackgroundAliasPage.routeName: (context) => BackgroundAliasPage(),
          CTAAliasPage.routeName: (context) => CTAAliasPage(),
          TextAliasPage.routeName: (context) => TextAliasPage(),
          IconAliasPage.routeName: (context) => IconAliasPage(),
          BorderAliasPage.routeName: (context) => BorderAliasPage(),
          DividerAliasPage.routeName: (context) => DividerAliasPage(),
          IconographyPage.routeName: (context) => IconographyPage(),
          LayoutPage.routeName: (context) => LayoutPage(),
          ButtonsPage.routeName: (context) => ButtonsPage(),
          CTAFABPage.routeName: (context) => CTAFABPage(),
          LargeCardPage.routeName: (context) => LargeCardPage(),
          VendorCardsPage.routeName: (context) => VendorCardsPage(),
          ElevationPage.routeName: (context) => ElevationPage(),
          RippleOverlayPage.routeName: (context) => RippleOverlayPage(),
          DialogsPage.routeName: (context) => DialogsPage(),
          NavigationPage.routeName: (context) => NavigationPage(),
        });
  }
}
