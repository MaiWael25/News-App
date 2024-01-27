import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=d7c4ed5f25ad4b4a9023ceae7d6ec7af&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articalModel = ArticleModel.fromJson(article);
        articlesList.add(articalModel);
      }
      return articlesList;
    }  catch (e) {
      return[];
    }
  }
}
