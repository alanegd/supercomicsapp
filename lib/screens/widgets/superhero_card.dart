import 'package:flutter/material.dart';
import 'package:supercomicsapp/models/superhero.dart' as sh;

class SuperheroCard extends StatelessWidget {
  const SuperheroCard({
    super.key,
    required this.superhero,
  });

  final sh.Superhero superhero;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(superhero.image.url),
        title: Text(superhero.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Gender: ${superhero.appearance.gender}'),
            Text('Intelligence: ${superhero.powerstats.intelligence}')
          ],
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          onPressed: () => print("Favorite pressed"),
        ),
      ),
    );
  }
}
