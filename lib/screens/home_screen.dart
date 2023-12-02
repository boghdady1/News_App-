import 'package:flutter/material.dart';
import 'package:news_app2/widgets/News_post_list_view.dart';
import 'package:news_app2/widgets/categories_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("News",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          Text("App",
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
        ]),
      ),
      body: Column(
        children: [
          CategoriesListView(),
          SizedBox(
            height: 10,
          ),
          Expanded(child: NewsPostListView()),
        ],
      ),
    );
  }
}
