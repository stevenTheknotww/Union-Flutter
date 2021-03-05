import 'package:flutter/material.dart';
import 'package:union_flutter/page/large_card_page.dart';

class VendorCardsPage extends StatelessWidget {
  static const routeName = '/vendor_cards';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor Cards'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Large Cards'),
            onTap: () {
              Navigator.pushNamed(context, LargeCardPage.routeName);
            },
          ),
          ListTile(
            title: Text('Medium Cards'),
          ),
          ListTile(
            title: Text('Small Cards'),
          ),
          ListTile(
            title: Text('Discovery Cards'),
          ),
        ],
      ),
    );
  }
}
