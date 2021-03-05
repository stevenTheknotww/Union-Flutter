import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/lib/text_styles.dart';

class IconographyPage extends StatelessWidget {
  static const routeName = '/iconography';

  @override
  Widget build(BuildContext context) {
    var featuresIcon = ['home', 'marketplace', 'planning'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Iconography'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Features'.toUpperCase(),
              style: TextStyles.FOOTNOTE.apply(color: UnionColors.link_onLight),
            ),
          ),
          Divider(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 5,
              children: List.generate(featuresIcon.length, (index) {
                return Center(
                  child: SvgPicture.asset(
                    'assets/images/icons/${featuresIcon[index]}.svg',
                    fit: BoxFit.none,
                    width: 24,
                    height: 24,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
