import 'package:flutter/material.dart';
import 'package:newsapp/widgets/cateogories_list_view.dart';




import '../widgets/news_list_view_builder.dart';
//import 'package:newsapp/widgets/news_tile.dart';
//import 'package:newsapp/widgets/news_tile.dart';

//import '../widgets/cateogories_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body:  const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CateogriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),

            NewsListViewBuilder(
              category: "general",
            ),
          ],
        ),
        // child: Column(
        //   children: [
        //     CateogriesListView(),
        //     SizedBox( height: 32,),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}

