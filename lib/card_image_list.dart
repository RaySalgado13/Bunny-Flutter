import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget> [
          CardImage("Assets/img/Rabbit1.jpg"),
          CardImage("Assets/img/Rabbit2.jpg"),
          CardImage("Assets/img/Rabbit3.jpg")
        ],
      ),
    );

  }

}