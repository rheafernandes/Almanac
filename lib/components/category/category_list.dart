import 'dart:convert';

import 'package:almanac/components/category/categorydata.dart';
import 'package:almanac/components/category/catergory_card.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  @override
  _CatergoryListState createState() => _CatergoryListState();
}

class _CatergoryListState extends State<CategoryList> {
  Future<CategoryData> fetchData() {
    return Future.delayed(Duration(seconds: 2),
        () => CategoryData.fromMap(json.decode(categoryMockData)));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CategoryData>(
        future: fetchData(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? Expanded(
                  child: ListView.builder(
                      itemCount: snapshot.data.categories.length,
                      itemBuilder: (context, index) {
                        return CategoryCard(
                            cardTitle: snapshot.data.categories[index].name,
                            isFavourite:
                                snapshot.data.categories[index].favourite,
                            url: snapshot.data.categories[index].url);
                      }),
                )
              : Center(
                  child:
                      CircularProgressIndicator(backgroundColor: Colors.white));
        });
  }
}
