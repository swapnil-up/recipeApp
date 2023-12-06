class Recipe{
  String label;
  String imageUrl;
  //TODO: Add serving and ingredients here

  Recipe(
      this.label,
      this.imageUrl,
      );
  //TODO: Add List<Recipe>

  static List<Recipe> samples=[
    Recipe(
      'Momo',
      'assets/momo.jpg'
    ),
    Recipe('Keema Noodles', 'assets/keema noodles.jpeg'),
    Recipe('Laphing', 'assets/laphing.jpeg')
  ];

}
//TODO: Add Ingredients