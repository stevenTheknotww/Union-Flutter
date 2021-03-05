import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/lib/text_styles.dart';
import 'package:union_flutter/viewmodel/font_details_view_model.dart';

class FontDetailsPage extends StatelessWidget {
  static const routeName = '/font_details';

  static void toFontDetailsPage(BuildContext context,
      {String title,
      double size,
      double lineHeight,
      String caseS,
      TextStyle textStyle}) {
    Navigator.pushNamed(context, routeName,
        arguments:
            FontDetailsViewModel(title, size, lineHeight, caseS, textStyle));
  }

  const FontDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FontDetailsViewModel args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(args.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: [
                SizedBox(width: 94, child: Text(args.title)),
                Text(
                  'Size:${args.size}, Line Height:${args.lineHeight}, Case:${args.caseS}',
                  style:
                      TextStyles.Caption1.apply(color: UnionColors.text_subtle),
                ),
              ],
            ),

            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              height: 1,
              decoration: BoxDecoration(color: UnionColors.coolgray_500),
            ),

            SizedBox(
              height: 16,
            ),

            // title
            Text(
              'Here’s a title.',
              style: args.textStyle,
            ),

            SizedBox(
              height: 32,
            ),

            // sentence
            Text(
              'Here’s the first paragraphy.\nSecond paragraphy. First off, tell us about yourself. We can\'t wait to help plan your perfect day. We\'ve started your Wedding Website so you can share info with your guests.',
              style: args.textStyle,
            ),

            SizedBox(
              height: 32,
            ),

            Text(
              '1234567890',
              style: args.textStyle,
            ),
            // number
          ],
        ),
      ),
    );
  }
}
