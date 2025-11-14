import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _StockAvailableSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filtros')),
      body: Column(
        children: [
          SwitchListTile(
            value: _StockAvailableSet,
            onChanged: (isChecked) {
              setState(() {
                _StockAvailableSet = isChecked;
              });
            },
            title: Text(
              'D I S P O N Í V E L',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              'Filtrar plantas com estoque disponível.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}
