import 'package:flutter/material.dart';
import 'package:news_app2/widgets/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(right: 50),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("News",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            Text("App",
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold)),
          ]),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsPostListViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}
