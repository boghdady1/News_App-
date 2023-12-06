import 'package:flutter/material.dart';
import 'package:news_app2/services/news_services.dart';

import 'news_post_sliver_view.dart';

class NewsPostListViewBuilder extends StatelessWidget {
  const NewsPostListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsServices().getGeneralNews(),
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
