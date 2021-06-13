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
  _buildList() {
    HeroesController heroesController = Provider.of<HeroesController>(context);
    return ListView.builder(
      itemCount: heroesController.heroes.length,
      itemBuilder: (context, index) {
        return _buildItems(heroesController.heroes[index]);
      },
    );
  }

  _buildItems(HeroeModel heroeModel) {
    HeroesController heroesController = Provider.of<HeroesController>(context);
    return ListTile(
      onTap: () {
        heroesController.checkFavorite(heroeModel);
      },
      title: Text(heroeModel.nome),
      trailing: heroeModel.isFavorite
          ? Icon(Icons.star, color: Colors.amber)
          : Icon(Icons.star_border),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Consumer<HeroesController>(
          builder: (context, value, child) {
            return Center(
              child: Text(value.heroes
                  .where((element) => element.isFavorite)
                  .length
                  .toString()),
            );
          },
        ),
      ),
      body: Consumer<HeroesController>(
          builder: (context, heroeController, widget) {
        return _buildList();
      }),
    );
  }
}
