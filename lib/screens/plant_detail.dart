import 'package:flutter/material.dart';
import 'package:plants/models/plant.dart';

class PlantDetailScreen extends StatelessWidget {
  const PlantDetailScreen({
    super.key,
    required this.plant,
    required this.onToggleFavorite,
  });

  final Plant plant;
  final void Function(Plant plant) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    final List<Widget> descriptionWidgets = plant.portugueseDescription
        .map(
          (description) => Padding(
            // Adicionando um Padding aqui para separar os textos, se houver mais de um
            padding: const EdgeInsets.only(
              bottom: 12.0,
            ), // Espaçamento entre os parágrafos
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(plant.popularTitle),
        actions: [
          IconButton(
            onPressed: () {
              onToggleFavorite(plant);
            },
            icon: Icon(Icons.star),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.network(
            plant.potImageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 14),
          Text(
            'Detalhes da Planta',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // Usa o espaço mínimo necessário
                mainAxisSize: MainAxisSize.min,
                children: descriptionWidgets,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
