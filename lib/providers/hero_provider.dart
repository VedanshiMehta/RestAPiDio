import 'package:dio_demo/models/heros.dart';
import 'package:dio_demo/services/hero_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeroNotifier extends ChangeNotifier {
  Heros? get superHero => _hero;
  Heros? _hero;
  void getHeroAsync() async {
    var heros = await HeroService().getReqRes();
    _hero = heros;

    notifyListeners();
  }
}

final heroItemProvider = ChangeNotifierProvider<HeroNotifier>(
  (ref) => HeroNotifier(),
);
