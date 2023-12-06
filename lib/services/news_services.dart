import 'package:dio/dio.dart';
import 'package:news_app2/models/articles_model.dart';

//todo: handle apis and methods
class NewsServices {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getGeneralNews() async {
    final Response response = await dio.get(
        "https://newsapi.org/v2/everything?q=%D9%85%D8%B5%D8%B1&apiKey=a7e0c5e48848418895f871835ea8f3ef&language=ar");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article["urlToImage"],
          title: article["title"],
          description: article["description"]);
      articlesList.add(articleModel);
    }
    return articlesList;
  }

  void getHealthNews() async {
    final Response response = await dio.get(
        "https://newsapi.org/v2/everything?q=%D8%A7%D9%84%D8%B5%D8%AD%D8%A9&apiKey=a7e0c5e48848418895f871835ea8f3ef&language=ar");
  }

  void getSportsNews() async {
    final Response response = await dio.get(
        "https://newsapi.org/v2/everything?q=%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6%D8%A9&apiKey=a7e0c5e48848418895f871835ea8f3ef&language=ar");
  }
}
