import 'package:flutter/material.dart';
import 'package:muchene_news/model/article.dart';
import 'package:muchene_news/model/category.dart';
import 'package:muchene_news/model/news.dart';
import 'package:muchene_news/screens/article_screen.dart';
import 'package:muchene_news/screens/category_news_screen.dart';
import 'package:muchene_news/widgets/category_tile.dart';
import 'package:muchene_news/widgets/news_tile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Category> categories = new List<Category>();
  List<Article> articles = new List<Article>();
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }

  getNews() async {
    News news = News();

    await news.getNews();
    articles = news.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Muchene',
            ),
            Text(
              'News',
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                ),
              ),
            )
          : SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                child: Column(
                  children: <Widget>[
                    // News categories
                    Container(
                      height: 90,
                      child: ListView.builder(
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => CategoryTile(
                          categoryName: categories[index].categoryName,
                          imageUrl: categories[index].imageUrl,
                          press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryNewsScreen(
                                category: categories[index].categoryName,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // News tiles
                    Container(
                      padding: EdgeInsets.only(top: 16),
                      child: ListView.builder(
                        itemCount: articles.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) => NewsTile(
                          imageUrl: articles[index].urlToImage,
                          title: articles[index].title,
                          description: articles[index].description,
                          url: articles[index].url,
                          press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ArticleScreen(
                                newsUrl: articles[index].url,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
