import 'package:flutter/material.dart';
import 'package:newsapp/models/cateogry_model.dart';
import 'package:newsapp/views/category_view.dart';


class CateogryCard extends StatelessWidget {
  const CateogryCard({super.key,required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)
        {
          return CategoryView(
            category: category.cateogryName,);
        },
        ),);
      },
      child: Padding(
          padding: const EdgeInsets.only(
            right: 16
          ),
          child: Container(
            height: 85,
            width: 160,
            decoration: BoxDecoration(
                image:  DecorationImage(
                    fit: BoxFit.fill
                    ,image: AssetImage(category.image)),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(12)
            ),

            child: Center(
              child: Text(category.cateogryName,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold ),),

            ),

          ),
        ),
    );


  }
}
