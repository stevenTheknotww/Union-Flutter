import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:union_flutter/lib/colors.dart';
import 'package:union_flutter/lib/text_styles.dart';

class CTAFABPage extends StatelessWidget {
  static const routeName = '/cta_fab';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CTA & FAB'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Link Button',
              style: TextStyles.Title1,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Take the Quiz',
              style: TextStyles.Body.apply(
                color: UnionColors.link_onLight,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.delete_outline,
                    color: UnionColors.coolgray_400,
                  ),
                  Text(
                    'Remove Item',
                    style: TextStyles.Body.apply(
                      color: UnionColors.coolgray_400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Primary Button',
              style: TextStyles.Title1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(UnionColors.tkred_600)),
              child: Text('Large'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(UnionColors.tkred_200)),
              child: Text(
                'Large Disable',
                style: TextStyle(color: UnionColors.white),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Medium'),
              onPressed: () {},
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(Size(150, 30)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(UnionColors.tkred_600)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Large'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: UnionColors.tkred_500,
      ),
    );
  }
}
