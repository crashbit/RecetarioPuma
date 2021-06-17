import 'package:flutter/material.dart';
import 'package:recetario/Model/Recipe.dart';

class RecipesHomePage extends StatefulWidget {
  RecipesHomePage({Key? key}) : super(key: key);

  @override
  _RecipesHomePageState createState() => _RecipesHomePageState();
}

class _RecipesHomePageState extends State<RecipesHomePage> {
  static List<Recipe> muestras = [
    Recipe("Mole con pollo", "assets/images/comida1.jpeg"),
    Recipe("Chilaquiles", "assets/images/comida2.jpeg"),
    Recipe("Tacos dorados", "assets/images/comida3.jpeg"),
    Recipe("Maruchan con suadero", "assets/images/comida4.jpeg"),
    Recipe("Taquitos de canasta", "assets/images/comida5.jpeg")
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
    child: Column(
      children: <Widget>[
        Image(image: AssetImage(recipe.imageRecipe)),
        Text(recipe.title),
      ],
    ),
  );
}
