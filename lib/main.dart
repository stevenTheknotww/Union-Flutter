import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:union_flutter/colors.dart';
import 'package:union_flutter/page/buttons_page.dart';
import 'package:union_flutter/page/color_page.dart';
import 'package:union_flutter/page/dialogs_page.dart';
import 'package:union_flutter/page/elevation_page.dart';
import 'package:union_flutter/page/iconography_page.dart';
import 'package:union_flutter/page/layout_page.dart';
import 'package:union_flutter/page/navigation_page.dart';
import 'package:union_flutter/page/ripple_overlay_page.dart';
import 'package:union_flutter/page/vendor_cards_page.dart';

import 'lib/text_styles.dart';
import 'page/typography_page.dart';

class Main extends StatelessWidget {
  final List<Tab> tabs = <Tab>[
    Tab(text: 'Foundation'),
    Tab(text: 'Component'),
    Tab(text: 'Pattern'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {}
          });

          return Scaffold(
            appBar: AppBar(
              title: Text('Union Flutter'),
              bottom: TabBar(
                tabs: tabs,
              ),
            ),
            body: TabBarView(
              children: tabs.map((Tab tab) {
                if (tab.text == "Foundation") {
                  return FoundationPage();
                } else if (tab.text == "Component") {
                  return ComponentPage();
                } else if (tab.text == 'Pattern') {
                  return PatternPage();
                } else {
                  return Center(
                    child: Text(tab.text),
                  );
                }
              }).toList(),
            ),
            drawer: Drawer(
              child: DrawerList(),
            ),
          );
        }));
  }
}

///
/// appbar hamburger menu
///
class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        MainDrawerHeader(),
        ListTile(
          title: Text('Changelog'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Foundation'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Component'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Patterns'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

///
/// DrawerHeader
///
class MainDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: DrawerHeader(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 10, left: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/images/union.svg',
                fit: BoxFit.fill,
                width: 81,
                height: 80,
              ),
              SizedBox(height: 12),
              Text(
                'Union Flutter',
                style: TextStyles.Headline.apply(color: Colors.white),
              ),
              Text(
                'Version:0.0.1',
                style: TextStyles.Caption1.apply(color: Colors.white),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: AppColors.backgroundDark,
        ),
      ),
    );
  }
}

///
/// FoundationPage
///
class FoundationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Typography'),
          onTap: () {
            Navigator.pushNamed(context, TypographyPage.routeName);
          },
        ),
        ListTile(
          title: Text('Color'),
          onTap: () {
            Navigator.pushNamed(context, ColorPage.routeName);
          },
        ),
        ListTile(
          title: Text('Iconography'),
          onTap: () {
            Navigator.pushNamed(context, IconographyPage.routeName);
          },
        ),
        ListTile(
          title: Text('Elevation'),
          onTap: () {
            Navigator.pushNamed(context, ElevationPage.routeName);
          },
        ),
        ListTile(
          title: Text('Layout'),
          onTap: () {
            Navigator.pushNamed(context, LayoutPage.routeName);
          },
        ),
        ListTile(
          title: Text('Ripple Overlay'),
          onTap: () {
            Navigator.pushNamed(context, RippleOverlayPage.routeName);
          },
        ),
      ],
    );
  }
}

///
/// ComponentPage
///
class ComponentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Buttons'),
          onTap: () {
            Navigator.pushNamed(context, ButtonsPage.routeName);
          },
        ),
        ListTile(
          title: Text('Dialogs'),
          onTap: () {
            Navigator.pushNamed(context, DialogsPage.routeName);
          },
        ),
        ListTile(
          title: Text('Control'),
          onTap: () {},
        ),
        ListTile(
          title: Text('TextField'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Snackbars'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Modal Bottom Sheet'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Picker'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Pills'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Badges'),
          onTap: () {},
        ),
      ],
    );
  }
}

///
/// PatternPage
///
class PatternPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Vendor Cards'),
          onTap: () {
            Navigator.pushNamed(context, VendorCardsPage.routeName);
          },
        ),
        ListTile(
          title: Text('Haptics'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Navigation'),
          onTap: () {
            Navigator.pushNamed(context, NavigationPage.routeName);
          },
        ),
        ListTile(
          title: Text('Shimmer Skeleton'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Illustration'),
          onTap: () {},
        ),
      ],
    );
  }
}
