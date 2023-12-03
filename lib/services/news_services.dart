import 'package:dio/dio.dart';

//todo: handle apis and methods
class NewsServices {
  final Dio dio = Dio();

  void getGeneralNews() async {
    final response = await dio.get(
        "https://newsapi.org/v2/everything?q=%D9%85%D8%B5%D8%B1&apiKey=a7e0c5e48848418895f871835ea8f3ef&language=ar");
    print(response);
  }

  void getHealthNews() async {
    final response = await dio.get(
        "https://newsapi.org/v2/everything?q=%D8%A7%D9%84%D8%B5%D8%AD%D8%A9&apiKey=a7e0c5e48848418895f871835ea8f3ef&language=ar");
    print(response);
  }

  void getSportsNews() async {
    final response = await dio.get(
        "https://newsapi.org/v2/everything?q=%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6%D8%A9&apiKey=a7e0c5e48848418895f871835ea8f3ef&language=ar");
    print(response);
  }
}
