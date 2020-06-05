import 'package:flutter/material.dart';
import 'package:muchene_news/model/article.dart';
import 'package:muchene_news/model/news.dart';
import 'package:muchene_news/screens/article_screen.dart';
import 'package:muchene_news/widgets/news_tile.dart';

class CategoryNewsScreen extends StatefulWidget {
  final String category;

  const CategoryNewsScreen({this.category});

  @override
  _CategoryNewsScreenState createState() => _CategoryNewsScreenState();
}

class _CategoryNewsScreenState extends State<CategoryNewsScreen> {
  List<Article> articles = new List<Article>();
  bool _loading = true;
  dynamic category;

  @override
  void initState() {
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNews categoryNews = CategoryNews();

    await categoryNews.getCategoryNews(widget.category);
    articles = categoryNews.categoryNews;
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
              '${widget.category}',
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
            ),
    );
  }
}
