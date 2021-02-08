import 'package:almanac/components/category/category_jumbotron.dart';
import 'package:almanac/components/category/category_list.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    //   return Scaffold(
    //     backgroundColor: Colors.teal.withOpacity(1.0),
    //     body: SafeArea(
    //       child: Column(
    //         children: [JumbotronCard(), CatergoryList()],
    //       ),
    //     ),
    //   );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[100].withOpacity(1.0),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                backgroundColor: Colors.teal,
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: searchBar(),
                    background: Image.asset(
                      "assets/jumbotronimage.jpg",
                      fit: BoxFit.cover,
                    )),
                actions: [
                  // IconButton(
                  //   icon: Icon(
                  //     Icons.search,
                  //     color: Colors.white,
                  //   ),
                  // )
                ],
              ),
            ];
          },
          body: CategoryList(),
        ),
      ),
    );
  }

  Container searchBar() {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 5, bottom: 5),
      // decoration: BoxDecoration(color: Colors.white.withOpascity(0.6)),
    );
  }
}
