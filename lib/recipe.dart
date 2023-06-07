class Recipe {
  String title;
  String description;
  List<String> ingredients;
  List<String> instructions;

  Recipe({
    required this.title,
    required this.description,
    required this.ingredients,
    required this.instructions,
  });

  int get ingredientCount => ingredients.length;
  int get instructionCount => instructions.length;
}
