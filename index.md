# Change log Recetario PUMA

- ### 15 / Junio / 2021

   Creación del código base del Recetario PUMA

- ### 16 / Junio / 2021
   - Desarrollo del Modelo de datos para las recetas
   - Despliegue de 5 titulos de recetas a través de un `ListView.Builder` usando un `Text` widget
   - Desarrollo de una función para regresar un `Card` widget con un `Text` widget
   - Creación del directorio ***assets*** en el directorio principal

![directory-assets-images.png](https://res.craft.do/user/full/84b48d19-7315-f096-324e-d6fa083511fa/doc/AD2DEDA0-6F40-43D0-8EDD-5F75EFA0B42C/DFA420C8-2897-4DC3-9843-4F20D70FC96A_2/directory-assets-images.png)

   - Modificación del modelo de datos para manejar imágenes

```swift
class Recipe {
  String title;
  String imageRecipe;

  Recipe(this.title, this.imageRecipe);
}
```

   - Modificación de la función widgetRecipeCard para desplgar una foto y un texto en un Card widget

```swift
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
```

