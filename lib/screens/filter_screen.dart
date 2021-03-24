import 'package:flutter/material.dart';
import 'package:mealsapp/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/fiters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Filters")),
      body: Center(
        child: Text("Filter Scren!!!"),
      ),
      drawer: MainDrawer(),
    );
  }
}
