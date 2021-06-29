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
    elevation: 5.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageRecipe)),
          SizedBox(
            height: 15.0,
          ),
          Text(recipe.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        ],
      ),
    ),
  );
}
