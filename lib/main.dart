import 'package:animal_reserve/drawer_options.dart';
import 'package:animal_reserve/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const DrawerOptions(),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.fitHeight,
              width: 200,
            ),
          ),
          actions: const [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                'assets/images/profile.png',
              ),
            ),
          ],
        ),
        body: const HomePage(),
      ),
    );
  }
}
