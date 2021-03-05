import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/lib/text_styles.dart';
import 'package:union_flutter/lib/widgets/line.dart';

class BackgroundAliasPage extends StatelessWidget {
  static const routeName = '/background alias';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Alias'),
      ),
      body: ListView(
        children: [
          ListItem(
            name: 'background_light',
            colorName: 'white',
            color: UnionColors.white,
          ),
          ListItem(
            name: 'background_light_contrast',
            colorName: 'coolgray_100',
            color: UnionColors.coolgray_100,
          ),
          ListItem(
            name: 'background_light_contrast2',
            colorName: 'coolgray_200',
            color: UnionColors.coolgray_200,
          ),
          ListItem(
            name: 'background_dark',
            colorName: 'indigo_900',
            color: UnionColors.indigo_900,
          ),
          ListItem(
            name: 'background_dark_contrast',
            colorName: 'indigo_800',
            color: UnionColors.indigo_800,
          ),
          ListItem(
            name: 'background_active',
            colorName: 'indigo_600',
            color: UnionColors.indigo_600,
          ),
          ListItem(
            name: 'background_error',
            colorName: 'tkred_100',
            color: UnionColors.tkred_100,
          ),
          ListItem(
            name: 'background_success',
            colorName: 'teal_200',
            color: UnionColors.teal_200,
          ),
          ListItem(
            name: 'background_warning',
            colorName: 'gold_100',
            color: UnionColors.gold_100,
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String name;
  final String colorName;
  final Color color;

  const ListItem({Key key, this.name, this.colorName, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                name,
                style: TextStyles.Body.apply(color: UnionColors.text_default),
              )),
              Text(
                colorName,
                style:
                    TextStyles.Caption1.apply(color: UnionColors.text_subtle),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(16)),
                width: 32,
                height: 32,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Line(),
        ),
      ],
    );
  }
}
