import 'package:flutter/material.dart';

class JumbotronCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: AssetImage('assets/jumbotronimage.jpg'), fit: BoxFit.fill),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Hey')]),
    );
  }
}
