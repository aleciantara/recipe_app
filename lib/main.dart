import 'package:flutter/material.dart';
import 'recipes.dart';
import 'recipe.dart';
import 'favorites_page.dart';
import 'recipe_detail_page.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        splashColor: Colors.lightGreen, // Set the splash color to red
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Recipes recipes = Recipes();
  List<Recipe> favorites = [];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(_currentIndex == 0 ? 'Recipe Organizer' : 'Favorites'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _currentIndex == 0
                  ? ListView.builder(
                      itemCount: recipes.recipeCount,
                      itemBuilder: (context, index) {
                        Recipe recipe = recipes.recipes[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecipeDetailPage(
                                  recipe: recipe,
                                  isFavorite: favorites.contains(recipe),
                                  toggleFavorite: _toggleFavorite,
                                ),
                              ),
                            );
                          },
                          child: Card(
                            margin: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                  child: Image.network(
                                    recipe.image,
                                    fit: BoxFit.cover,
                                    height: 100,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    recipe.title,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : FavoritesPage(
                      favoriteRecipes: favorites,
                      toggleFavorite: _toggleFavorite,
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor:
            Colors.lightGreen, // Set the selected item color to red
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }

  void _toggleFavorite(Recipe recipe) {
    setState(() {
      if (favorites.contains(recipe)) {
        favorites.remove(recipe);
      } else {
        favorites.add(recipe);
      }
    });
  }
}
