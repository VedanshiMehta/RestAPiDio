import 'package:dio_demo/models/heros.dart';
import 'package:flutter/material.dart';

class HeroItem extends StatelessWidget {
  const HeroItem({super.key, required this.heros});
  final SuperHero heros;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image.network(
              heros.url,
              height: 50,
              width: 50,
              fit: BoxFit.fill,
            ),
          ),
          title: Text(
            heros.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            heros.power,
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
