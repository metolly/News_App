import 'package:dio/dio.dart';
import 'package:flutter_application_2/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  Future<List<articleModel>> getGeneralNews({required String category}) async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=9415626b5da54817908a0ef3ccaeff5c&country=us&category=$category');

    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata['articles'];
    List<articleModel> articlesList = [];
    for (var article in articles) {
      articleModel artmod = articleModel.fromJeson(article);
      articlesList.add(artmod);
    }
    return articlesList;
  }
}
