
import 'package:flutter/material.dart';

import '../constants.dart';



class NewsCard extends StatelessWidget {
  const NewsCard({
    Key key, this.image, this.title, this.price, this.press,
  }) : super(key: key);

  final String image, title;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: press,
            child: Container(
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  image,
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23)),
              ],
            ),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "$price birr",
                        style: TextStyle(
                          color: kTextColor ,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
