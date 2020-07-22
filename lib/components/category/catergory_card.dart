import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String cardTitle;
  final bool isFavourite;
  final String url;

  const CategoryCard({Key key, this.cardTitle, this.isFavourite, this.url})
      : super(key: key);

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
                isFavourite == true
                    ? Icon(
                        Icons.favorite,
                        color: Colors.teal.withOpacity(1.0),
                      )
                    : Icon(
                        Icons.favorite_border,
                        color: Colors.teal.withOpacity(1.0),
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
