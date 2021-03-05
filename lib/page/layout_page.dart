import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  static const routeName = '/layout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  margin: EdgeInsetsDirectional.only(start: 20, end: 20),
                  color: Colors.white,
                  child: Center(child: Text('margin:20'))),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsetsDirectional.only(start: 16, end: 16),
                  color: Colors.orangeAccent,
                  child: Center(child: Text('margin:16'))),
            ),
          ],
        ),
      ),
    );
  }
}
