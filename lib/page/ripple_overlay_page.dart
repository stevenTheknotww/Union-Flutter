import 'package:flutter/material.dart';

class RippleOverlayPage extends StatelessWidget {
  static const routeName = '/ripple_overlay';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ripple Overlay'),
      ),
      body: ListView(
        children: [
          Text('Neutral'),
          Text('Link Button'),
          Text('Icon Button'),
        ],
      ),
    );
  }
}
