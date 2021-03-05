import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/lib/text_styles.dart';

import 'font_details_page.dart';

class TypographyPage extends StatelessWidget {
  static const routeName = '/typography';

  String title = 'Plan your perfect day!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Typography'),
      ),
      body: ListView(
        children: [
          TypographyListItem(
            title: title,
            style: TextStyles.LargeTitle,
            name: 'LargeTitle',
            size: 32,
            lineHeight: 40,
            caseS: 'Title/Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.Title1,
            name: 'Title1',
            size: 28,
            lineHeight: 36,
            caseS: 'Title/Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.Title2,
            name: 'Title2',
            size: 24,
            lineHeight: 32,
            caseS: 'Title/Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.Title3,
            name: 'Title3',
            size: 20,
            lineHeight: 28,
            caseS: 'Title/Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.Headline,
            name: 'Headline',
            size: 18,
            lineHeight: 24,
            caseS: 'Title/Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.HeadlineRegular,
            name: 'HeadlineRegular',
            size: 18,
            lineHeight: 24,
            caseS: 'Title/Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.Body,
            name: 'Body',
            size: 16,
            lineHeight: 24,
            caseS: 'Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.BodyBold,
            name: 'BodyBold',
            size: 16,
            lineHeight: 24,
            caseS: 'Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.Subhead,
            name: 'Subhead',
            size: 14,
            lineHeight: 20,
            caseS: 'Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.SubheadBold,
            name: 'SubheadBold',
            size: 14,
            lineHeight: 20,
            caseS: 'Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.Caption1,
            name: 'Caption1',
            size: 12,
            lineHeight: 16,
            caseS: 'Sentence',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.Caption2,
            name: 'Caption2',
            size: 11,
            lineHeight: 16,
            caseS: 'Title',
          ),
          TypographyListItem(
            title: title,
            style: TextStyles.Callout,
            name: 'Callout',
            size: 18,
            lineHeight: 28,
            caseS: 'Sentence',
          ),
          TypographyListItem(
            title: title.toUpperCase(),
            name: 'FOOTNOTE',
            size: 12,
            lineHeight: 16,
            caseS: 'Sentence',
            style: TextStyles.FOOTNOTE,
          ),
        ],
      ),
    );
  }
}

class TypographyListItem extends StatelessWidget {
  final String title;
  final String name;
  final double size;
  final double lineHeight;
  final String caseS;
  final TextStyle style;

  const TypographyListItem(
      {Key key,
      this.title,
      this.name,
      this.size,
      this.lineHeight,
      this.caseS,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: [
        GestureDetector(
          onTap: () => {
            FontDetailsPage.toFontDetailsPage(context,
                title: name,
                size: size,
                lineHeight: lineHeight,
                caseS: caseS,
                textStyle: style)
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: UnionColors.coolgray_200),
                  child: Text(
                    title,
                    style: style,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 94,
                      child: Text(
                        name,
                        style: TextStyles.Caption1,
                      ),
                    ),
                    Text(
                      'Size:$size, Line Height:$lineHeight, Case:$caseS',
                      style: TextStyles.Caption1.apply(
                          color: UnionColors.text_subtle),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          width: double.infinity,
          height: 1,
          decoration: BoxDecoration(color: UnionColors.coolgray_500),
        )
      ],
    );
  }
}
