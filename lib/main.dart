import 'package:flutter/material.dart';
import 'package:flutter_project_studio/recipe_detail.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme=ThemeData();
    return MaterialApp(
      title: 'Recipe App',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
        primary:Colors.grey,
        secondary:Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context){
                          return RecipeDetail(recipe: Recipe.samples[index]);
                        }
                        )
                );
              },
                child:buildRecipeCard(Recipe.samples[index]),
            );

          },
        ),
      ),
    );
  }
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w900,
                fontFamily: 'Calibri',
              ),
            )
          ],
        ),
      ),
    );
  }
}
