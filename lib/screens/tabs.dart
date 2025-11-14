import 'package:flutter/material.dart';
import 'package:plants/screens/categories.dart';
import 'package:plants/screens/filters.dart';
import 'package:plants/screens/plants.dart';
import 'package:plants/models/plant.dart';
import 'package:plants/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Plant> _favoritePlants = [];

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  void _togglePlantFavoriteStatus(Plant plant) {
    final isExisting = _favoritePlants.contains(plant);

    if (isExisting) {
      setState(() {
        _favoritePlants.remove(plant);
        _showInfoMessage('Planta removida dos favoritos! :(');
      });
    } else {
      setState(() {
        _favoritePlants.add(plant);
        _showInfoMessage('Planta adicionada aos favoritos! :)');
      });
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (ctx) => FiltersScreen()));
    } else {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(
      onToggleFavorite: _togglePlantFavoriteStatus,
    );
    var activePageTitle = 'Categorias';

    if (_selectedPageIndex == 1) {
      activePage = PlantsScreen(
        plants: _favoritePlants,
        onToggleFavorite: _togglePlantFavoriteStatus,
      );
      activePageTitle = 'Suas Favoritas';
    }

    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      drawer: MainDrawer(onSelectScreen: _setScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}
