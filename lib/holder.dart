// import 'package:flutter/material.dart';
// import 'package:newsapp/services/news_service.dart';
// import 'package:dio/dio.dart';
//
// import '../models/article_model.dart';
// import 'news_tile.dart';
//
// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});
//
//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }
//
// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   @override
//   bool isLoading = true;
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }
//
//   Future<void> getGeneralNews() async {
//     articles=  await NewsService(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return isLoading ? const SliverFillRemaining(child:  Center(child: CircularProgressIndicator())):SliverList(
//         delegate: SliverChildBuilderDelegate(
//             childCount: articles.length,
//                 (context, index) {
//               return  Padding(
//                 padding: EdgeInsets.only(bottom: 22),
//                 child: NewsTile(
//                   articleModel: articles[index],
//                 ),
//               );
//             }));
//   }
// }
