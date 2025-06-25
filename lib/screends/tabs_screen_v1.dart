import 'package:flutter/material.dart';
import 'package:meals/screends/categories_screen.dart';
import 'package:meals/screends/favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Vamos Cozinhar'),
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.category,
                    color: Colors.white,
                  ),
                  text: 'Categorias',
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  text: 'Favoritos',
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoriteScreen(),
          ],
        ),
      ),
    );
  }
}
