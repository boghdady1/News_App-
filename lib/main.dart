import 'package:flutter/material.dart';
import 'package:news_app2/screens/home_screen.dart';
import 'package:news_app2/services/news_services.dart';

void main() {
  runApp(const NewsApp());
  NewsServices().getGeneralNews();
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
