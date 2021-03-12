import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            height: 66,
            width: 66,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [

                  Colors.blue,
                  Colors.green,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black87
              ),
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage("https://images.pexels.com/photos/6662764/pexels-photo-6662764.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
              ),
            ),
          ),
          Container(
            width: 50,
            child: AutoSizeText(
              'desenvolvimento@_23',
              maxLines: 2,
              style: TextStyle(
                fontSize: 12, color: Colors.white
              ),
              minFontSize: 8,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      );
  }
}
