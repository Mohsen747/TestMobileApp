import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main_page.dart';

class food_page extends StatelessWidget {
  final Food food;

  const food_page({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              food.name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 46.0),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                food.imagePath,
                width: 400,
                height: 400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Text(
              'Delicious!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 115.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context); 
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: const Icon(
                         Icons.menu,
                            size: 16,
                        ),
                    ),
                    Text(
                      'See all the food!',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}