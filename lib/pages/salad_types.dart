import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/pages/appBar.dart';

class SaladTypes extends StatefulWidget {
  const SaladTypes({super.key});

  @override
  State<SaladTypes> createState() => _SaladTypesState();
}

class _SaladTypesState extends State<SaladTypes> {
  // Example data for each salad type
  final List<Map<String, dynamic>> saladData = [
    {
      'image': 'assets/icons/blueberry-pancake.svg',
      'name': 'Caesar Salad',
      'detail': 'A classic with romaine, parmesan, and croutons.',
      'color': const Color(0xff92A3Fd).withOpacity(0.2),
    },
    {
      'image': 'assets/icons/canai-bread.svg',
      'name': 'Greek Salad',
      'detail': 'Fresh cucumbers, tomatoes, olives, and feta.',
      'color': const Color(0xff92A3Fd).withOpacity(0.3),
    },
    {
      'image': 'assets/icons/eggs.svg',
      'name': 'Cobb Salad',
      'detail': 'Loaded with chicken, eggs, avocado, and bacon.',
      'color': const Color(0xff92A3Fd).withOpacity(0.4),
    },
    {
      'image': 'assets/icons/fruit_salad.svg',
      'name': 'Fruit Salad',
      'detail': 'A sweet mix of seasonal fruits.',
      'color': const Color(0xff92A3Fd).withOpacity(0.5),
    },
    {
      'image': 'assets/icons/flour.svg',
      'name': 'Potato Salad',
      'detail': 'A creamy blend with potatoes, eggs, and mayonnaise.',
      'color': const Color(0xff92A3Fd).withOpacity(0.6),
    },
    {
      'image': 'assets/icons/honey-pancakes.svg',
      'name': 'Waldorf Salad',
      'detail': 'Crunchy apples, celery, walnuts, and a mayonnaise dressing.',
      'color': const Color(0xff92A3Fd).withOpacity(0.65),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Canai Bread Details'),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
        ),
        itemCount: saladData.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: saladData[index]['color'],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/honey-pancakes.svg",
                  width: 80,
                  height: 80,
                ),
                const SizedBox(height: 10),
                Text(
                  saladData[index]['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  saladData[index]['detail'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
