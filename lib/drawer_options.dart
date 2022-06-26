import 'package:flutter/material.dart';

class DrawerOptions extends StatelessWidget {
  const DrawerOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Save Tiger',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Text('About Us'),
          ),
          ListTile(
            leading: Icon(Icons.warning_amber_rounded),
            title: Text('Threats'),
          ),
          ListTile(
            leading: Icon(Icons.handshake_rounded),
            title: Text('Join Us'),
          ),
          ListTile(
            leading: Icon(Icons.attach_money_rounded),
            title: Text('Donate'),
          ),
          ListTile(
            leading: Icon(Icons.help_center_rounded),
            title: Text('Help'),
          ),
        ],
      ),
    );
  }
}
