import 'package:flutter/material.dart';

class PopularNowContainer extends StatelessWidget {
  String locationName;
  String cityName;

  PopularNowContainer({this.locationName, this.cityName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 250.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                "https://images.unsplash.com/photo-1545922421-2417f6beb2b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.7),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.0,
                bottom: 30.0,
              ),
              child: RichText(
                text: TextSpan(
                  text: locationName + "\n",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      style: TextStyle(fontWeight: FontWeight.w300),
                      text: cityName,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
