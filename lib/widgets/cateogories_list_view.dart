import 'package:flutter/material.dart';
import 'package:newsapp/views/cateogry_card.dart';

import '../models/cateogry_model.dart';

class CateogriesListView extends StatelessWidget {
    const CateogriesListView({super.key});
  final List<CategoryModel> cateogries = const [
    CategoryModel(image: 'assets/technology.jpeg', cateogryName: 'Technology'),
    CategoryModel(image: 'assets/bussiness.jpg', cateogryName: 'Business'),
    CategoryModel(image: 'assets/entertaiment.jpg', cateogryName: 'Entertainment'),
    CategoryModel(image: 'assets/general.jpg', cateogryName: 'General'),
    CategoryModel(image: 'assets/health.jpg', cateogryName: 'Health'),
    CategoryModel(image: 'assets/sports.jpg', cateogryName: 'Sports'),
    CategoryModel(image: 'assets/science.jpeg', cateogryName: 'Science'),


    
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cateogries.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index){
              return CateogryCard(
                category: cateogries[index],
              );
            })
    );
  }
}
