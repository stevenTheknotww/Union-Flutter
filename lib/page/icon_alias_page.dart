import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/page/background_alias_page.dart';

class IconAliasPage extends StatelessWidget {
  static const routeName = '/icon_alias';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Alias'),
      ),
      body: ListView(
        children: [
          ListItem(
            name: 'icon_default',
            colorName: 'midnight',
            color: UnionColors.icon_default,
          ),
          ListItem(
            name: 'icon_subtitle',
            colorName: 'coolgray_500',
            color: UnionColors.icon_subtitle,
          ),
          ListItem(
            name: 'icon_cta',
            colorName: 'tkred_500',
            color: UnionColors.icon_cta,
          ),
          ListItem(
            name: 'icon_cta',
            colorName: 'tkred_500',
            color: UnionColors.icon_cta,
          ),
          ListItem(
            name: 'icon_link',
            colorName: 'indigo_600',
            color: UnionColors.icon_link,
          ),
          
        ],
      ),
    );
  }
}
