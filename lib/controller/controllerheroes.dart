import 'package:flutter/cupertino.dart';
import 'package:heroes/model/modelheroes.dart';

class HeroesController {
  final List<HeroeModel> heroes = [
    HeroeModel(nome: 'Super Man'),
    HeroeModel(nome: 'Mulher maravilha'),
    HeroeModel(nome: 'Hulk'),
    HeroeModel(nome: 'Batman'),
    HeroeModel(nome: 'Super Choques'),
  ];
}
