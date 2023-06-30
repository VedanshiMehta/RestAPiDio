import 'dart:convert';

Heros superHeroListFromJson(Map<String, dynamic> str) => Heros.fromJson((str));
String superHeroListToJson(Heros hero) => json.encode(hero.toJson());

class Heros {
  List<SuperHero> superHeros;
  Heros({required this.superHeros});
  factory Heros.fromJson(Map<String, dynamic> json) => Heros(
        superHeros: List<SuperHero>.from(
            json["superheros"].map((x) => SuperHero.fromJson(x))),
      );
  Map<String, dynamic> toJson() => {
        "superheros": List<dynamic>.from(superHeros.map((x) => x.toJSon())),
      };
}

class SuperHero {
  String name;
  String power;
  String url;
  SuperHero({
    required this.name,
    required this.power,
    required this.url,
  });

  factory SuperHero.fromJson(Map<String, dynamic> json) => SuperHero(
        name: json["name"],
        power: json["power"],
        url: json["url"],
      );
  Map<String, dynamic> toJSon() => {
        "name": name,
        "power": power,
        "url": url,
      };
}
