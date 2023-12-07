import 'package:flutter/material.dart';
import 'package:news_app2/models/articles_model.dart';
import 'package:news_app2/services/news_services.dart';

import 'news_post_sliver_view.dart';

class NewsPostListViewBuilder extends StatefulWidget {
  const NewsPostListViewBuilder({
    super.key,
    required this.category,
  });

  final String category;

  @override
  State<NewsPostListViewBuilder> createState() =>
      _NewsPostListViewBuilderState();
}

class _NewsPostListViewBuilderState extends State<NewsPostListViewBuilder> {
  var future;

  @override
  void initState() {
    future = NewsServices().getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsPostListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child:
                Image.asset("assets/thumbnail-medium.jpeg", fit: BoxFit.cover),
          );
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
