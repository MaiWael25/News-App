import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import 'package:dio/dio.dart';

import 'news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     future = NewsService(Dio()).getNews(
       category: widget.category
     );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              child: Text("oops there was an error,try later"),
            );
          } else {
            return const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()));
          }
        });
    // isLoading ? SliverFillRemaining(child:  Center(child: CircularProgressIndicator())) :
    // articles.isNotEmpty ?
    // NewsListView(
    //   articles: articles,
    // )
    // : const SliverFillRemaining(
    //   child: Text("oops there was an error,try later"),
    // );
  }
}
