import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heroes/controller/controllerheroes.dart';
import 'package:heroes/model/modelheroes.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _buildList(HeroesController heroController) {
    return ListView.builder(
      itemCount: heroController.heroes.length,
      itemBuilder: (context, index) {
        return _buildItems(heroController.heroes[index]);
      },
    );
  }

  _buildItems(HeroeModel heroeModel) {
    return ListTile(title: Text(heroeModel.nome));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Consumer<HeroesController>(
          builder: (context, heroeController, widget) {
        return _buildList(heroeController);
      }),
    );
  }
}
