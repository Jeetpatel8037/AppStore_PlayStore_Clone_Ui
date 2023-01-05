import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AppStore_Home_Page.dart';
import 'PlayStore_Home_Page.dart';
import 'gloabal.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Global.isIos
        ? const CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: AppStore(),
          )
        : const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: PlayStore(),
          );
  }
}
