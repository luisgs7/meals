import 'package:flutter/material.dart';
import 'package:meals/screends/categories_meals_screen.dart';
import 'package:meals/screends/categories_screen.dart';
import 'package:meals/lib/app_routes.dart';
import 'package:meals/screends/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
          // background: Color.fromRGBO(255, 254, 229, 1),
        ),
        scaffoldBackgroundColor: Color.fromRGBO(255, 254, 229, 1),
        // canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              titleLarge: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
              ),
              titleSmall: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 16,
              ),
            ),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
            ),
      ),
      // home: CategoriesScreen(),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
    );
  }
}
