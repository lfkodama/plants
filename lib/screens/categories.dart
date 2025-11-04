import 'package:flutter/material.dart';
import 'package:plants/data/dummy_data.dart';
import 'package:plants/models/category.dart';
import 'package:plants/screens/plants.dart';
import 'package:plants/widgets/category_grid_item.dart';
import 'package:plants/models/plant.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onToggleFavorite});

  final void Function(Plant plant) onToggleFavorite;

  void _selectCategory(BuildContext context, Category category) {
    final filteredPlants = dummyPlants
        .where((plant) => plant.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => PlantsScreen(
          title: category.title,
          plants: filteredPlants,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(24),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            onSelectCategory: () {
              _selectCategory(context, category);
            },
          ),
      ],
    );
  }
}
