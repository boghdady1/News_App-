import 'package:dio/dio.dart';
import 'package:news_app2/models/articles_model.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final Response response = await dio.get(
          "https://newsapi.org/v2/everything?q=$category&apiKey=a7e0c5e48848418895f871835ea8f3ef&language=ar");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromjson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } on Exception {
      return [];
    }
  }
}
// void getHealthNews() async {
//   final Response response = await dio.get(
//       "https://newsapi.org/v2/everything?q=%D8%A7%D9%84%D8%B5%D8%AD%D8%A9&apiKey=a7e0c5e48848418895f871835ea8f3ef&language=ar");
// }
//
// void getSportsNews() async {
//   final Response response = await dio.get(
//       "https://newsapi.org/v2/everything?q=%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6%D8%A9&apiKey=a7e0c5e48848418895f871835ea8f3ef&language=ar");
// }
