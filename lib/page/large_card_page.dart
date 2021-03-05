import 'package:flutter/material.dart';
import 'package:union_flutter/lib/text_styles.dart';

class LargeCardPage extends StatelessWidget {
  static const routeName = '/large_card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Large Cards')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Large Card with CTA',
              style: TextStyles.Title3,
            ),
          )
        ],
      ),
    );
  }
}
