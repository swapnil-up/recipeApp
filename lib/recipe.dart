class Recipe{
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(
      this.label,
      this.imageUrl,
      this.servings,
      this.ingredients
      );
  //TODO: Add List<Recipe>

  static List<Recipe> samples=[
    Recipe(
      'Momo',
      'assets/momo.jpg',
      1,
      [
        Ingredient(100,'gm','Minced Chicken'),
        Ingredient(40,'gm','Dough'),
      ],
    ),
    Recipe('Keema Noodles', 'assets/keema noodles.jpeg',1,
    [Ingredient(100,'gm','noodles')]),
    Recipe('Laphing', 'assets/laphing.jpeg',2,[Ingredient(20, 'gm', 'Gluten')])
  ];

}

class Ingredient{
  double quantity;
  String measure;
  String name;

  Ingredient(
  this.quantity,
  this.measure,
  this.name,
  );
}