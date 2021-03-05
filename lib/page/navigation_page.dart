import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  static const routeName = '/navigation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {},
            title: Text('Standard App Bars'),
          ),
        ],
      ),
    );
  }
}
