import 'package:flutter/material.dart';

class DrawerOptions extends StatelessWidget {
  const DrawerOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_rounded,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Save Tiger',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Text('About Us'),
          ),
          const ListTile(
            leading: Icon(Icons.warning_amber_rounded),
            title: Text('Threats'),
          ),
          const ListTile(
            leading: Icon(Icons.handshake_rounded),
            title: Text('Join Us'),
          ),
          const ListTile(
            leading: Icon(Icons.attach_money_rounded),
            title: Text('Donate'),
          ),
          const ListTile(
            leading: Icon(Icons.help_center_rounded),
            title: Text('Help'),
          ),
        ],
      ),
    );
  }
}
