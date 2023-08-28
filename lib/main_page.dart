import 'package:flutter/material.dart';
import 'food_page.dart';

class main_page extends StatelessWidget {
  const main_page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Food Choices'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => food_page(food: foodList[index]),
                ),
              );
            },
            child: Card(
              elevation: 4.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Image.asset(
                      foodList[index].imagePath,
                      width: 150, 
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(foodList[index].name),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Food {
  final String name;
  final String imagePath;

  Food({required this.name, required this.imagePath});
}
List<Food> foodList = [
  Food(name: 'Baked Pork', imagePath: 'assets/images/baked_pork_tenderloin.jpg'),
  Food(name: 'Broccoli', imagePath: 'assets/images/broccoli.jpg'),
  Food(name: 'Classic Chilli', imagePath: 'assets/images/classic_chili.jpg'),
  Food(name: 'Ice Cream', imagePath: 'assets/images/ice_cream.jpg'),
  Food(name: 'Pancake', imagePath: 'assets/images/pancake.jpg'),
  Food(name: 'Sushi', imagePath: 'assets/images/sushi.jpg'),
  Food(name: 'Kabab Koobideh', imagePath: 'assets/images/Kabab_Koobideh.jpeg'),
  Food(name: 'Khoresh Bademjan', imagePath: 'assets/images/Khoresh_Bademjan.jpg') 
   
];
