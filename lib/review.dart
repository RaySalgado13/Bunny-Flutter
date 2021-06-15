import 'package:flutter/material.dart';
import 'rating.dart';

class Review extends StatelessWidget{
  String pathImage = "Assets/img/reviewImage.jpg";
  String name = "Rayito";
  String details = "1 review 5 photos";
  String comment = "Lo amé 10/10";
  double stars = 4.5;

  Review(this.pathImage, this.name, this.details,this.comment, this.stars);

  @override
  Widget build(BuildContext context) {

    final userComments = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 17.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: 20.0
          ),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Color(0xFFa3a5a7)
            ),
          ),
        ),
        Rating(stars, 5, 14)
      ],
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComments
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );




    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
  
}