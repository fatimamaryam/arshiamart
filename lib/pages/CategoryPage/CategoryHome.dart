import 'package:arshiamart/model/CategoryList.dart';
import 'package:arshiamart/pages/CategoryPage/Category.dart';
import 'package:flutter/material.dart';

class CategoryHome extends StatefulWidget {
  @override
  _CategoryHomeState createState() => _CategoryHomeState();
}

class _CategoryHomeState extends State<CategoryHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Category",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              letterSpacing: 1,
              color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
        child: Categories(),
      ),
    );
  }
}
