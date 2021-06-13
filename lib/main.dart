import 'package:flutter/material.dart';
import 'package:heroes/controller/controllerheroes.dart';
import 'package:heroes/view/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<HeroesController>.value(value: HeroesController())],
      child: MaterialApp(
        title: 'Heroes',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
