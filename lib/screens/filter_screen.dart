import 'package:flutter/material.dart';
import 'package:mealsapp/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/fiters';
  final Function saveFilter;

  final Map<String, bool> currentFilters;
  FiltersScreen(this.currentFilters, this.saveFilter);
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  initState() {
    _glutenFree = widget.currentFilters['gluten'];
    _lactoseFree = widget.currentFilters['lactose'];
    _vegetarian = widget.currentFilters['vegetarian'];
    _vegan = widget.currentFilters['vegan'];
    super.initState();
  }

  Widget _buildSwitchListTile(String title, String description,
      bool currenValue, Function updatedValue) {
    return SwitchListTile(
        value: currenValue,
        title: Text(title),
        subtitle: Text(description),
        onChanged: updatedValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                final selectedFilters = {
                  'gluten': _glutenFree,
                  'lactose': _lactoseFree,
                  'vegan': _vegan,
                  'vegetarian': _vegetarian
                };
                widget.saveFilter(selectedFilters);
              })
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              "Adjust your meals Selection",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            padding: EdgeInsets.all(20),
          ),
          Expanded(
              child: Container(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  "Gluten Free",
                  'Only include gluteen Free meals',
                  _glutenFree,
                  (newValue) {
                    setState(
                      () {
                        _glutenFree = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                    "Lactose Free",
                    'Only include Lactose Free meals',
                    _lactoseFree, (newValue) {
                  setState(
                    () {
                      _lactoseFree = newValue;
                    },
                  );
                }),
                _buildSwitchListTile(
                    "Vegetarian Free",
                    'Only include Vegetarian Free meals',
                    _vegetarian, (newValue) {
                  setState(
                    () {
                      _vegetarian = newValue;
                    },
                  );
                }),
                _buildSwitchListTile(
                    "Vegan Free", 'Only include Vegan Free meals', _vegan,
                    (newValue) {
                  setState(
                    () {
                      _vegan = newValue;
                    },
                  );
                })
              ],
            ),
          ))
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
