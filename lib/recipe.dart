class Recipe {
  String title;
  String description;
  List<String> ingredients;
  List<String> instructions;
  String image;
  bool isFavorite;

  Recipe({
    required this.title,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.image,
    this.isFavorite = false,
  });

  int get ingredientCount => ingredients.length;
  int get instructionCount => instructions.length;
}
