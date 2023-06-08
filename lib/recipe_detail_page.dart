import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetailPage extends StatefulWidget {
  final Recipe recipe;
  final bool isFavorite;
  final Function(Recipe recipe) toggleFavorite;

  const RecipeDetailPage({
    Key? key,
    required this.recipe,
    required this.isFavorite,
    required this.toggleFavorite,
  }) : super(key: key);

  @override
  _RecipeDetailPageState createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {
  bool _isFavorite = false;
  List<bool> _isStepCompletedList = [];

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
    _isStepCompletedList =
        List.generate(widget.recipe.instructions.length, (_) => false);
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
      widget.toggleFavorite(widget.recipe);
    });
  }

  void _markStepAsCompleted(int index) {
    setState(() {
      _isStepCompletedList[index] = !_isStepCompletedList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.title),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                widget.recipe.image,
                fit: BoxFit.cover,
                height: 200,
              ),
              SizedBox(height: 16),
              Text(
                widget.recipe.description,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Ingredients:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  widget.recipe.ingredients.length,
                  (index) => Text(
                    '- ${widget.recipe.ingredients[index]}',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Instructions:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  widget.recipe.instructions.length,
                  (index) => ListTile(
                    contentPadding: EdgeInsets.all(0.5),
                    leading: CircleAvatar(
                      radius: 16,
                      backgroundColor: _isStepCompletedList[index]
                          ? Colors.green
                          : Colors.grey,
                      child: _isStepCompletedList[index]
                          ? Icon(Icons.check, color: Colors.white)
                          : null,
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(
                          left: 8), // Add left padding to the text
                      child: Text(
                        '${index + 1}. ${widget.recipe.instructions[index]}',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _markStepAsCompleted(index);
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleFavorite,
        child: Icon(
          _isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
