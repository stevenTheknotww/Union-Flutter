import 'package:flutter/material.dart';
import 'package:union_flutter/page/cta_fab_page.dart';

class ButtonsPage extends StatelessWidget {
  static const routeName = '/buttons';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('CTA & FAB'),
            onTap: () {
              Navigator.pushNamed(context, CTAFABPage.routeName);
            },
          ),
          ListTile(
            title: Text('Link Buttons'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Button Loading State'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
