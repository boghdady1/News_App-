import 'package:flutter/material.dart';
import 'package:news_app2/models/category_models.dart';
import 'package:news_app2/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
        photo: "assets/bussines.aspx",
        title: "Business",
        searchName: "الاقتصاد"),
    CategoryModel(
      photo: "assets/sport-congresse.jpg",
      title: "Sports",
      searchName: "Sports",
    ),
    CategoryModel(
      photo: "assets/health.aspx",
      title: "Health",
      searchName: "Health",
    ),
    CategoryModel(
      photo: "assets/science.avif",
      title: "Science",
      searchName: "Science",
    ),
    CategoryModel(
      photo: "assets/technology.jpeg",
      title: "Technology",
      searchName: "التكنولوجيا",
    ),
    CategoryModel(
      photo: "assets/entertainment.jpg",
      title: "Entertainment",
      searchName: "الفن",
    ),
    CategoryModel(
      photo: "assets/general.avif",
      title: "Generale",
      searchName: "عام",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categories[index]);
        },
      ),
    );
  }
}
