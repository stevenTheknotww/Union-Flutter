import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/lib/text_styles.dart';
import 'package:union_flutter/lib/widgets/line.dart';

class BorderAliasPage extends StatelessWidget {
  static const routeName = '/border_alias';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Border Alias'),
      ),
      body: ListView(
        children: [
          ListItem(
            name: 'border_default',
            colorName: 'coolgray_300',
            color: UnionColors.border_default,
          ),
          ListItem(
            name: 'border_selected',
            colorName: 'coolgray_500',
            color: UnionColors.border_selected,
          ),
          ListItem(
            name: 'border_success',
            colorName: 'teal_600',
            color: UnionColors.border_success,
          ),
          ListItem(
            name: 'border_error',
            colorName: 'tkred_600',
            color: UnionColors.border_error,
          ),
          ListItem(
            name: 'border_active',
            colorName: 'coolgray_500',
            color: UnionColors.border_active,
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
                    border: Border.all(color: color, width: 1),
                    borderRadius: BorderRadius.circular(16)),
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
