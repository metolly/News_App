import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widget/Category_Card.dart';
import 'package:flutter_application_2/models/Categorymodel.dart';

class CategoryCardListView extends StatelessWidget {
  const CategoryCardListView({
    Key? key,
  }) : super(key: key);
  final List<CategoryModel> cat = const [
    CategoryModel(
        name: 'sports',
        Photo: 'assets/Learn-Sport-Names-List-of-Sports-in-English.jpg'),
    CategoryModel(name: 'business', Photo: 'assets/download.jfif'),
    CategoryModel(name: 'entertainment', Photo: 'assets/entertaiment.avif'),
    CategoryModel(name: 'general', Photo: 'assets/download (2).jfif'),
    CategoryModel(name: 'health', Photo: 'assets/health.avif'),
    CategoryModel(name: 'science', Photo: 'assets/science.avif'),
    CategoryModel(name: 'tehnology', Photo: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cat.length,
        itemBuilder: ((context, index) {
          return CategoryCard(
            category: cat[index],
          );
        }),
      ),
    );
  }
}
