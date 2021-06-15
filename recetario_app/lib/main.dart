import 'package:flutter/material.dart';
import 'package:recetario/Pages/RecipesHomePage.dart';

import 'Utilities/Colors.dart';

main() {
  runApp(RecetarioPuma());
}

class RecetarioPuma extends StatelessWidget {
  const RecetarioPuma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: UNAM_Blue,
        accentColor: UNAM_Gold,
      ),
      home: RecipesHomePage(),
    );
  }
}
