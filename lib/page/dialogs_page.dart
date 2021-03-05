
import 'package:flutter/material.dart';

class DialogsPage extends StatelessWidget {
  static const routeName = '/dialogs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogs'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              _showDefaultDialog(context);
            },
            title: Text('Default Dialog'),
          ),
          ListTile(
            onTap: () {
              _showInputDialog(context);
            },
            title: Text('Input Content Dialog'),
          )
        ],
      ),
    );
  }

  Future<void> _showDefaultDialog(BuildContext context) async {
    return showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Title'),
            content: Text('Are you sure you want to delete this member?'),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                },
                child: Text('Done'),
              ),
            ],
          );
        });
  }

  Future<void> _showInputDialog(BuildContext context) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('Title'),
            content: TextField(
              onChanged: (value) {

              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Done'),
              ),
            ],
          );
        });
  }
}
