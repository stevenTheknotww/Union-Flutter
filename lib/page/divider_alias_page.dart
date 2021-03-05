import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';

import 'border_alias_page.dart';

class DividerAliasPage extends StatelessWidget {
  static const routeName = '/divider_alias';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider Alias'),
      ),
      body: ListView(
        children: [
          ListItem(
            name: 'divider_default',
            colorName: 'coolgray_300',
            color: UnionColors.divider_default,
          ),
        ],
      ),
    );
  }
}
