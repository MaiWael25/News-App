import 'package:flutter/material.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:dio/dio.dart';

import '../models/article_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {


   final List<ArticleModel> articles;
   const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {

    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
                (context, index) {
              return  Padding(
                padding: EdgeInsets.only(bottom: 22),
                child: NewsTile(
                  articleModel: articles[index],
                ),
              );
            }));
  }
}
