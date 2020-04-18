import 'package:flutter/material.dart';

class RecommendedContainer extends StatelessWidget {
  String nationName;

  RecommendedContainer({this.nationName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 90.0,
            width: 130.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                "https://images.unsplash.com/photo-1545922421-2417f6beb2b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black.withOpacity(.4),
            ),
          ),
          Center(
            child: Text(
              nationName,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
