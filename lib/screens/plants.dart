import 'package:flutter/material.dart';
import 'package:plants/models/plant.dart';
import 'package:plants/screens/plant_detail.dart';
import 'package:plants/widgets/plant_item.dart';

class PlantsScreen extends StatelessWidget {
  const PlantsScreen({super.key, required this.title, required this.plants});

  final String title;
  final List<Plant> plants;

  void selectPlant(BuildContext context, Plant plant) {
    // Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => PlantDetailScreen(plant: plant)),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Opa! Não tem nada aqui!'),
          SizedBox(height: 16),
          Text(
            'Tente selecionar outra categoria!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );

    if (plants.isNotEmpty) {
      content = ListView.builder(
        itemCount: plants.length,
        itemBuilder: (ctx, index) => PlantItem(
          plant: plants[index],
          onSelectPlant: (plant) {
            selectPlant(context, plant);
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
