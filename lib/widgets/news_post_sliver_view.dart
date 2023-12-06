import 'package:flutter/material.dart';
import 'package:news_app2/models/articles_model.dart';
import 'package:news_app2/services/news_services.dart';
import 'package:news_app2/widgets/news_posts.dart';

class NewsPostListView extends StatefulWidget {
  const NewsPostListView({super.key});

  @override
  State<NewsPostListView> createState() => _NewsPostListViewState();
}

class _NewsPostListViewState extends State<NewsPostListView> {
  List<ArticleModel> articles = [];

  @override
  initState() {
    getGeneralNews();
    super.initState();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices().getGeneralNews();
    setState(() {});
  }

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
