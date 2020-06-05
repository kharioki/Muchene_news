import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  NewsTile(
      {@required this.imageUrl,
      @required this.title,
      @required this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(imageUrl),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
