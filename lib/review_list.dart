import 'package:flutter/material.dart';
import 'review.dart';


class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String pathImage1 = "Assets/img/reviewImage.jpg";
    String name1 = "Rayito";
    String details1 = "1 review 5 photos";
    String comment1 = "Lo amé 10/10";

    String pathImage2 = "Assets/img/farolito.jpg";
    String name2 = "Farolito";
    String details2 = "5 review 16 photos";
    String comment2 = "Es muy latoso";

    String pathImage3 = "Assets/img/reviewImage2.jpg";
    String name3 = "Ru";
    String details3 = "1 review 2 photos";
    String comment3 = "Me encantó";



    return Column(
        children: <Widget> [
          new Review(pathImage1,name1,details1,comment1,5),
          new Review(pathImage2,name2,details2,comment2,3.5),
          new Review(pathImage3,name3,details3,comment3,5),
        ],
    );

  }

}