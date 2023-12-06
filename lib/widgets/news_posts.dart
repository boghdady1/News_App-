import 'package:flutter/material.dart';
import 'package:news_app2/models/articles_model.dart';

class NewsPosts extends StatelessWidget {
  const NewsPosts({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: articleModel.image != null
                  ? Image.network(articleModel.image!, fit: BoxFit.cover)
                  : Image.asset("assets/No_image_available.svg.png",
                      fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Text(
            articleModel.title ?? "No title available",
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Text(
            articleModel.description ?? "No description available",
            style: const TextStyle(fontSize: 14, color: Colors.black45),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
