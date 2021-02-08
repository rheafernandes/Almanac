import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final String cardTitle;
  final bool isFavourite;
  final String url;

  const CategoryCard({Key key, this.cardTitle, this.isFavourite, this.url})
      : super(key: key);

  @override
  _CategoryCardState createState() =>
      _CategoryCardState(cardTitle, url, isFavourite);
}

class _CategoryCardState extends State<CategoryCard> {
  final String cardTitle;
  final String url;
  bool isFavourite;
  IconData iconData;

  _CategoryCardState(this.cardTitle, this.url, this.isFavourite);

  @override
  void initState() {
    print(isFavourite);
    iconData = isFavourite == true ? Icons.favorite : Icons.favorite_border;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavourite = !isFavourite;
                      iconData = isFavourite == true
                          ? Icons.favorite
                          : Icons.favorite_border;
                    });
                  },
                  child: Icon(
                    iconData,
                    color: Colors.teal.withOpacity(1.0),
                  ),
                ),
                Text(cardTitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
              ]),
          FlutterLogo(
            size: 100,
          )
        ]));
  }
}
