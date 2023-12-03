import 'package:flutter/material.dart';
import 'package:news_app2/models/category_models.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      height: 120,
      width: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(categoryModel.photo), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
          child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black.withOpacity(.7),
        ),
        padding: const EdgeInsets.all(3),
        child: Text(
          categoryModel.title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      )),
    );
  }

  const CategoryCard({super.key, required this.categoryModel});
}
