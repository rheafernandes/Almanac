import 'package:almanac/components/category/category_jumbotron.dart';
import 'package:almanac/components/category/category_list.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.withOpacity(1.0),
      body: SafeArea(
        child: Column(
          children: [JumbotronCard(), CatergoryList()],
        ),
      ),
    );
  }
}
