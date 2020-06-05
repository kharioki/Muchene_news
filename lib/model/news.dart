import 'dart:convert';

import 'package:muchene_news/model/article.dart';
import 'package:http/http.dart' as http;

class News {
  List<Article> news = [];

  Future<void> getNews() async {
    String url =
        'http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=ff1b0401763846049607f19122d1d0f8';

    // fetch top headlines
    var response = await http.get(url);

    // convert to json
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          // create article
          Article article = new Article(
              element['author'],
              element['title'],
              element['description'],
              element['url'],
              element['urlToImage'],
              element['content'],
              element['publishedAt']);

          // add article to news model
          news.add(article);
        }
      });
    }
  }
}
