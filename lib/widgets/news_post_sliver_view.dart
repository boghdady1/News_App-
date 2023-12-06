import 'package:flutter/material.dart';
import 'package:news_app2/models/articles_model.dart';
import 'package:news_app2/widgets/news_posts.dart';

class NewsPostListView extends StatelessWidget {
  const NewsPostListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return NewsPosts(
          articleModel: articles[index],
        );
      },
    ));
  }
}
