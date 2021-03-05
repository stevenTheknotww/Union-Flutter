import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/lib/text_styles.dart';

class PrimaryPalettePage extends StatelessWidget {
  static const routeName = '/primary_palette';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primary Palette'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'brand palette'.toUpperCase(),
              style: TextStyles.FOOTNOTE,
            ),
          ),
          ListItem(
            colorValue: '#FFCC251C',
            colorName: 'tkred_600',
            color: UnionColors.tkred_600,
          ),
          ListItem(
            colorValue: '#FFD83D2E',
            colorName: 'tkred_500',
            color: UnionColors.tkred_500,
          ),
          ListItem(
            colorValue: '#FFE64C38',
            colorName: 'tkred_400',
            color: UnionColors.tkred_400,
          ),
          ListItem(
            colorValue: '#FFE96150',
            colorName: 'tkred_300',
            color: UnionColors.tkred_300,
          ),
          ListItem(
            colorValue: '#FFF4CBC6',
            colorName: 'tkred_200',
            color: UnionColors.tkred_200,
          ),
          ListItem(
            colorValue: '#FFFAEDE8',
            colorName: 'tkred_100',
            color: UnionColors.tkred_100,
          ),

          // accent palette
          ListTile(
            title: Text(
              'accent palette'.toUpperCase(),
              style: TextStyles.FOOTNOTE,
            ),
          ),
          ListItem(
            colorValue: '#FF0D2941',
            colorName: 'indigo_900',
            color: UnionColors.indigo_900,
          ),
          ListItem(
            colorValue: '#FF1C355E',
            colorName: 'indigo_800',
            color: UnionColors.indigo_800,
          ),
          ListItem(
            colorValue: '#FF014B93',
            colorName: 'indigo_700',
            color: UnionColors.indigo_700,
          ),
          ListItem(
            colorValue: '#FF2B72BF',
            colorName: 'indigo_600',
            color: UnionColors.indigo_600,
          ),
          ListItem(
            colorValue: '#FF518AD7',
            colorName: 'indigo_500',
            color: UnionColors.indigo_500,
          ),
          ListItem(
            colorValue: '#FF8DBEFF',
            colorName: 'indigo_400',
            color: UnionColors.indigo_400,
          ),

          // Neutral Palette
          ListTile(
            title: Text(
              'Neutral Palette'.toUpperCase(),
              style: TextStyles.FOOTNOTE,
            ),
          ),
          ListItem(
            colorValue: '#FF061929',
            colorName: 'midnight',
            color: UnionColors.midnight,
          ),
          ListItem(
            colorValue: '#FF6D7179',
            colorName: 'coolgray_500',
            color: UnionColors.coolgray_500,
          ),
          ListItem(
            colorValue: '#FF9699A0',
            colorName: 'coolgray_400',
            color: UnionColors.coolgray_400,
          ),
          ListItem(
            colorValue: '#FFCACCD0',
            colorName: 'coolgray_300',
            color: UnionColors.coolgray_300,
          ),
          ListItem(
            colorValue: '#FFE9E9ED',
            colorName: 'coolgray_200',
            color: UnionColors.coolgray_200,
          ),
          ListItem(
            colorValue: '#FFF5F6F8',
            colorName: 'coolgray_100',
            color: UnionColors.coolgray_100,
          ),
          ListItem(
            colorValue: '#FFFFFFFF',
            colorName: 'white',
            color: UnionColors.white,
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String colorValue;
  final String colorName;
  final Color color;

  const ListItem({Key key, this.colorValue, this.colorName, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            color: color,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(
              colorValue,
              style: TextStyles.Caption1.apply(color: UnionColors.text_subtle),
            ),
          ),
          Text(
            colorName,
            style: TextStyles.Body.apply(color: UnionColors.text_default),
          ),
        ],
      ),
    );
  }
}
