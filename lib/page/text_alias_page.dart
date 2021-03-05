import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/page/background_alias_page.dart';

class TextAliasPage extends StatelessWidget {
  static const routeName = '/text_alias';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Alias'),
      ),
      body: ListView(
        children: [
          ListItem(
            name: 'text_brand',
            colorName: 'tkred_500',
            color: UnionColors.tkred_500,
          ),
          ListItem(
            name: 'text_default',
            colorName: 'midnight',
            color: UnionColors.text_default,
          ),
          ListItem(
            name: 'text_subtle',
            colorName: 'coolgray_500',
            color: UnionColors.text_subtle,
          ),
          ListItem(
            name: 'text_disabled',
            colorName: 'coolgray_300',
            color: UnionColors.text_disabled,
          ),
          ListItem(
            name: 'text_error',
            colorName: 'tkred_600',
            color: UnionColors.text_error,
          ),
          ListItem(
            name: 'text_success',
            colorName: 'teal_600',
            color: UnionColors.text_success,
          ),
          ListItem(
            name: 'text_warning',
            colorName: 'gold_900',
            color: UnionColors.text_warning,
          ),
          ListItem(
            name: 'text_warning',
            colorName: 'gold_900',
            color: UnionColors.text_warning,
          ),
          ListItem(
            name: 'text_onDark_default',
            colorName: 'white',
            color: UnionColors.text_onDark_default,
          ),
          ListItem(
            name: 'text_onDark_subtitle',
            colorName: 'coolgray_300',
            color: UnionColors.text_onDark_subtitle,
          ),
          ListItem(
            name: 'text_onLight',
            colorName: 'indigo_600',
            color: UnionColors.text_onLight,
          ),
          ListItem(
            name: 'text_onDark',
            colorName: 'indigo_400',
            color: UnionColors.text_onDark,
          ),
        ],
      ),
    );
  }
}
