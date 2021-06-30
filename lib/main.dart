import 'package:flutter/material.dart';
import 'package:recipe_app/category_meals_screen.dart';

import './categories_screen.dart';
import './category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Repas Délicieux',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategeoriesScreen(),
      initialRoute: '/',
      /*the default route is '/' */
      routes: {
        '/': (ctx) => CategeoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        // mise en lien avec static const routeName = 'category-meals', dans category_meals_screen
        // '/category-meal' : (ctx) => CategoriesMealsScreen(); ça c'est l'ancienne version, il est préférable de linker avec la prop static pour les gros applications
      },
    );
  }
}
