import 'package:flutter/material.dart';
import 'package:recetario/Model/Recipe.dart';

class RecipesHomePage extends StatefulWidget {
  RecipesHomePage({Key? key}) : super(key: key);

  @override
  _RecipesHomePageState createState() => _RecipesHomePageState();
}

class _RecipesHomePageState extends State<RecipesHomePage> {
  static List<Recipe> muestras = [
    Recipe("Mole con pollo"),
    Recipe("Chilaquiles"),
    Recipe("Tacos dorados"),
    Recipe("Maruchan con suadero"),
    Recipe("Taquitos de canasta")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Recetario PUMA"),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: muestras.length,
            itemBuilder: (BuildContext context, int index) {
              return widgetRecipeCard(muestras[index]);
            },
          ),
        ));
  }
}

Widget widgetRecipeCard(Recipe recipe) {
  return Card(
    child: Text(recipe.title, style: TextStyle(fontSize: 20)),
  );
}
