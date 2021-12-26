import 'dart:io';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'foodelici_theme.dart';
import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle("Foodelici");
    setWindowMinSize(const Size(400, 690));
    setWindowMaxSize(const Size(400, 690));
  }
  runApp(const Foodelici());
}

class Foodelici extends StatelessWidget {
  const Foodelici({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final ThemeData theme = ThemeData();
    final theme = FoodeliciTheme.dark();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // TODO: Add theme
      theme: theme,
      title: 'Foodelici',
      home: const Home(),
    );
  }
}
