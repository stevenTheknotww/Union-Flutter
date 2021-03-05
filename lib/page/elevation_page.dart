import 'package:flutter/material.dart';

class ElevationPage extends StatelessWidget {
  static const routeName = '/elevation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevation'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('color'.toUpperCase()),
          ),
          ListTile(
            title: Text('Dialog'),
          ),
          ListTile(
            title: Text('Navigation Drawer'),
          ),
          ListTile(
            title: Text('Floating action Button'),
          ),
          ListTile(
            title: Text('Dropped Menu'),
          ),
          ListTile(
            title: Text('App Bar Light'),
          ),
          ListTile(
            title: Text('Card'),
          ),
        ],
      ),
    );
  }
}
