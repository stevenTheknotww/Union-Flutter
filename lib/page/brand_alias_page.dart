import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/lib/text_styles.dart';

class BrandAliasPage extends StatelessWidget {
  static const routeName = '/brand_alias';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brand Alias'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  'brand_primary',
                  style: TextStyles.Body.apply(color: UnionColors.text_default),
                )),
                Text(
                  'tkRed400',
                  style:
                      TextStyles.Caption1.apply(color: UnionColors.text_subtle),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: UnionColors.brand_primary,
                      borderRadius: BorderRadius.circular(16)),
                  width: 32,
                  height: 32,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
