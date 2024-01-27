import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
          articleModel.image??
            "https://www.si.com/.image/t_share/MTg1ODgyMTMxNzMyMzc1MjM1/sports_illustrated_2021_year_in_pictures_00007.jpg",
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,),
        ),
        const SizedBox(
          height: 12,
        ),
         Text(
        articleModel.title! ,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color:Colors.black87,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),),
        const SizedBox(
          height: 8,
        ),
         Text(
           articleModel.subTitle ?? " ",

        maxLines: 2,
        style: TextStyle(
          color: Colors.grey,fontSize: 14
        ),)
      ],
    );
  }
}
