import 'package:flutter/material.dart';
import 'package:mealsapp/screens/category_meals_screen.dart';
import 'package:mealsapp/screens/filter_screen.dart';
import 'package:mealsapp/screens/meal_detail_screen.dart';
import 'package:mealsapp/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.pink,
            accentColor: Colors.amber,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: "Raleway",
            textTheme: ThemeData.light().textTheme.copyWith(
                  bodyText1: TextStyle(
                    color: Color.fromRGBO(20, 51, 51, 1),
                  ),
                  bodyText2: TextStyle(
                    color: Color.fromRGBO(20, 51, 51, 1),
                  ),
                  headline1: TextStyle(
                      fontSize: 20,
                      fontFamily: 'RobotoCondensed',
                      fontWeight: FontWeight.bold),
                )),
        routes: {
          "/": (ctx) => TabsScreen(),
          CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
          MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
          FiltersScreen.routeName: (ctx) => FiltersScreen()
        });
  }
}
