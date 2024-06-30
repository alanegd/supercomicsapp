import 'package:flutter/material.dart';
import 'package:supercomicsapp/models/superhero.dart';
import 'package:supercomicsapp/screens/widgets/custom_search_bar.dart';
import 'package:supercomicsapp/screens/widgets/superhero_list.dart';
import 'package:supercomicsapp/services/superhero_service.dart';

class SuperheroesScreen extends StatefulWidget {
  const SuperheroesScreen({super.key});

  @override
  State<SuperheroesScreen> createState() => _SuperheroesScreenState();
}

class _SuperheroesScreenState extends State<SuperheroesScreen> {
  List<Superhero> superheroes = [];
  final SuperHeroService superheroService = SuperHeroService();

  Future<void> fetchHeroes(String value) async {
    if (value.isEmpty) {
      return;
    }

    try {
      List<Superhero> result =
          await superheroService.searchHeros(value) as List<Superhero>;
      setState(() {
        superheroes = result;
      });
      print("Heroes fetched: ${superheroes.length}");
    } catch (e) {
      print("Error fetching heroes: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Superheroes'),
      ),
      body: Center(
        child: Column(
          children: [
            CustomSearchBar(
              callback: (value) {
                fetchHeroes(value);
              },
            ),
            Expanded(child: SuperheroList(superheroes: superheroes))
          ],
        ),
      ),
    );
  }
}
