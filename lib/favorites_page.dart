import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail_page.dart';

class FavoritesPage extends StatelessWidget {
  final List<Recipe> favoriteRecipes;
  final Function(Recipe recipe) toggleFavorite;

  const FavoritesPage({
    Key? key,
    required this.favoriteRecipes,
    required this.toggleFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: favoriteRecipes.isEmpty
                  ? Center(
                      child: Text(
                        "Kamu belum memiliki resep favorit",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: favoriteRecipes.length,
                      itemBuilder: (context, index) {
                        Recipe recipe = favoriteRecipes[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecipeDetailPage(
                                  recipe: recipe,
                                  isFavorite: favoriteRecipes.contains(recipe),
                                  toggleFavorite: toggleFavorite,
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
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
