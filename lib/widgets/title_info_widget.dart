import 'package:flutter/material.dart';

class TitleInfoWidget extends StatelessWidget {

  final styleTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 18, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'La Vía Láctea',
                  style: styleTitle,
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Es una galaxia espiral.',
                  style: styleSubTitle,
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 30,
          ),
          Text(
            '41',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}