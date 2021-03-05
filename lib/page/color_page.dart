import 'package:flutter/material.dart';
import 'package:union_flutter/lib/text_styles.dart';
import 'package:union_flutter/lib/widgets/line.dart';
import 'package:union_flutter/page/background_alias_page.dart';
import 'package:union_flutter/page/border_alias_page.dart';
import 'package:union_flutter/page/brand_alias_page.dart';
import 'package:union_flutter/page/cta_alias_page.dart';
import 'package:union_flutter/page/divider_alias_page.dart';
import 'package:union_flutter/page/icon_alias_page.dart';
import 'package:union_flutter/page/primary_palette_page.dart';
import 'package:union_flutter/page/secondary_palette_page.dart';
import 'package:union_flutter/page/text_alias_page.dart';

class ColorPage extends StatelessWidget {
  static const routeName = '/color';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'PALETTE'.toUpperCase(),
              style: TextStyles.FOOTNOTE,
            ),
          ),
          Line(),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, PrimaryPalettePage.routeName);
              },
              child: ListItem(title: 'Primary Palette')),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SecondaryPalettePage.routeName);
              },
              child: ListItem(title: 'Secondary Palette')),
          ListTile(
            title: Text(
              'ALIAS',
              style: TextStyles.FOOTNOTE,
            ),
          ),
          Line(),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, BrandAliasPage.routeName);
              },
              child: ListItem(title: 'Brand')),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, BackgroundAliasPage.routeName);
              },
              child: ListItem(title: 'Background')),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CTAAliasPage.routeName);
              },
              child: ListItem(title: 'CTA')),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, TextAliasPage.routeName);
              },
              child: ListItem(title: 'Text')),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, IconAliasPage.routeName);
              },
              child: ListItem(title: 'Icon')),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, BorderAliasPage.routeName);
              },
              child: ListItem(title: 'Border')),
          GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, DividerAliasPage.routeName);
              },
              child: ListItem(title: 'Divider'))
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;

  const ListItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children: [
            Expanded(
              child: Text(
                title,
                style: TextStyles.Headline,
              ),
            ),
            Icon(Icons.keyboard_arrow_right),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16.0),
          child: Line(),
        ),
      ],
    );
  }
}
