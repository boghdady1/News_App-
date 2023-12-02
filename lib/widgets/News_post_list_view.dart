import 'package:flutter/material.dart';
import 'package:news_app2/widgets/news_posts.dart';

class NewsPostListView extends StatelessWidget {
  const NewsPostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return NewsPosts();
        },
      ),
    );
  }
}
