import 'package:flutter/material.dart';
import 'package:news_app2/models/articles_model.dart';
import 'package:news_app2/services/news_services.dart';

import 'news_post_sliver_view.dart';

class NewsPostListViewBuilder extends StatefulWidget {
  const NewsPostListViewBuilder({
    super.key,
  });

  @override
  State<NewsPostListViewBuilder> createState() =>
      _NewsPostListViewBuilderState();
}

class _NewsPostListViewBuilderState extends State<NewsPostListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  initState() {
    getGeneralNews();
    super.initState();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices().getGeneralNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : NewsPostListView(
            articles: articles,
          );
  }
}
