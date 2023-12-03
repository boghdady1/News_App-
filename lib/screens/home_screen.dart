import 'package:flutter/material.dart';
import 'package:news_app2/widgets/categories_list_view.dart';
import 'package:news_app2/widgets/news_post_sliver_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("News",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            Text("App",
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold)),
          ]),
        ),
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            NewsPostListView()
          ],
        ));
  }
}
