import 'package:flutter/material.dart';
import 'package:news_app2/widgets/news_posts.dart';

class NewsPostListView extends StatelessWidget {
  const NewsPostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: 10,
      (context, index) {
        return const NewsPosts();
      },
    ));
  }
}
