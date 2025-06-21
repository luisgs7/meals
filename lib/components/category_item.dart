import 'package:flutter/material.dart';
import 'package:meals/lib/app_routes.dart';

import '../models/category.dart';
import '../screends/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category? category;
  const CategoryItem(this.category, {super.key});

  //TODO: função para realizar a navevagação entre telas
  void _selectCategory(BuildContext context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoriesMealsScreen(category);
    //     },
    //   ),
    // );
    Navigator.of(context)
        .pushNamed(AppRoutes.CATEGORIES_MEALS, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Text(
          category!.title!,
          style: Theme.of(context)
              .textTheme
              .titleMedium, // TODO: utilizando fonte a partir do theme
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [category!.color!, category!.color!.withOpacity(0.5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
      ),
    );
  }
}
