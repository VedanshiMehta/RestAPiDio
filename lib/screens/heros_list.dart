import 'package:dio_demo/models/heros.dart';
import 'package:dio_demo/providers/hero_provider.dart';
//import 'package:dio_demo/widgets/empty_screen.dart';
import 'package:dio_demo/widgets/hero_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HerosListScreen extends ConsumerStatefulWidget {
  const HerosListScreen({super.key});
  @override
  ConsumerState<HerosListScreen> createState() {
    return _HerosState();
  }
}

class _HerosState extends ConsumerState<HerosListScreen> {
  Heros? hero;
  @override
  void initState() {
    super.initState();
    ref.read(heroItemProvider).getHeroAsync();
  }

  @override
  Widget build(BuildContext context) {
    var hero = ref.watch(heroItemProvider).superHero;
    Widget content = const Center(child: CircularProgressIndicator());
    if (hero != null && hero.superHeros.isNotEmpty) {
      content = Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: hero.superHeros.length,
          itemBuilder: (ctx, index) => HeroItem(
            heros: hero.superHeros[index],
          ),
        ),
      );
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Heros'),
        ),
        body: content);
  }
}
