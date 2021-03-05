import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/page/background_alias_page.dart';

class CTAAliasPage extends StatelessWidget {
  static const routeName = '/cta_alias';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CTA Alias'),
      ),
      body: ListView(
        children: [
          ListItem(
            name: 'cta_default',
            colorName: 'tkred_500',
            color: UnionColors.cta_default,
          ),
          ListItem(
            name: 'cta_hover',
            colorName: 'tkred_600',
            color: UnionColors.cta_hover,
          ),
          ListItem(
            name: 'cta_disabled',
            colorName: 'tkred_200',
            color: UnionColors.cta_disabled,
          ),
        ],
      ),
    );
  }
}
