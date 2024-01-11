import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/CategoryView.dart';
import 'package:flutter_application_2/models/Categorymodel.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: category.name,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                category.Photo,
              ),
            ),
            color: Colors.orange,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
              child: Text(
            category.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
