import 'package:arshiamart/model/CategoryList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoryList = CategoryList.fetchAll();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: categoryList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 2.0, right: 2.0),
            child: SingleCategory(context, categoryList[index]),
          );
        });
  }
}

Widget SingleCategory(BuildContext context, CategoryList categoryList) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    color: Colors.white12,
    child: Hero(
      tag: categoryList.catName,
      child: Material(
        child: InkWell(
          onTap: () {},
          child: GridTile(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
//                  color: Colors.grey,
                  image: new DecorationImage(
                      image: new NetworkImage(categoryList.catImage),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.transparent.withOpacity(0.2),
                          BlendMode.darken)),
//                child: Image.network(
//                  categoryList.catImage,
//                  fit: BoxFit.cover,
//                  colorBlendMode: BlendMode.modulate,
//                ),
                ),
              ),
            ),
            footer: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                categoryList.catName,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
