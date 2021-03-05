import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/lib/text_styles.dart';

import 'primary_palette_page.dart';

class SecondaryPalettePage extends StatelessWidget {
  static const routeName = '/secondary_palette';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secondary Palette'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Decorative'.toUpperCase(),
              style: TextStyles.FOOTNOTE,
            ),
          ),
          ListItem(
            colorValue: '#FFCC251C',
            colorName: 'gold_900',
            color: UnionColors.gold_900,
          ),
          ListItem(
            colorValue: '#FFF89D25',
            colorName: 'gold_500',
            color: UnionColors.gold_500,
          ),
          ListItem(
            colorValue: '#FFFBB559',
            colorName: 'gold_400',
            color: UnionColors.gold_400,
          ),
          ListItem(
            colorValue: '#FFFFCB86',
            colorName: 'gold_300',
            color: UnionColors.gold_300,
          ),
          ListItem(
            colorValue: '#FFFFE5C2',
            colorName: 'gold_200',
            color: UnionColors.gold_200,
          ),
          ListItem(
            colorValue: '#FFFDF4E8',
            colorName: 'gold_100',
            color: UnionColors.gold_100,
          ),
          ListItem(
            colorValue: '#FF9E005F',
            colorName: 'raspberry_500',
            color: UnionColors.raspberry_500,
          ),
          ListItem(
            colorValue: '#FFDC5899',
            colorName: 'raspberry_400',
            color: UnionColors.raspberry_400,
          ),
          ListItem(
            colorValue: '#FFF180A9',
            colorName: 'raspberry_300',
            color: UnionColors.raspberry_300,
          ),
          ListItem(
            colorValue: '#FFFAD8E5',
            colorName: 'raspberry_200',
            color: UnionColors.raspberry_200,
          ),
          ListItem(
            colorValue: '#FFFFB09C',
            colorName: 'peach_500',
            color: UnionColors.peach_500,
          ),
          ListItem(
            colorValue: '#FFFFC8B2',
            colorName: 'peach_400',
            color: UnionColors.peach_400,
          ),
          ListItem(
            colorValue: '#FFFFDBCE',
            colorName: 'peach_300',
            color: UnionColors.peach_300,
          ),
          ListItem(
            colorValue: '#FF00746E',
            colorName: 'teal_600',
            color: UnionColors.teal_600,
          ),
          ListItem(
            colorValue: '#FF00988B',
            colorName: 'teal_500',
            color: UnionColors.teal_500,
          ),
          ListItem(
            colorValue: '#FF75CDC0',
            colorName: 'teal_400',
            color: UnionColors.teal_400,
          ),
          ListItem(
            colorValue: '#FFACE9E0',
            colorName: 'teal_300',
            color: UnionColors.teal_300,
          ),
          ListItem(
            colorValue: '#FFCDF2EC',
            colorName: 'teal_200',
            color: UnionColors.teal_200,
          ),
        ],
      ),
    );
  }
}
