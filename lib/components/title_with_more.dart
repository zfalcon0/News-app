
import 'package:dbu_news/components/title_with_underline.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key key,
    this.title,
    this.pressed,
  }) : super(key: key);

  final String title;
  final Function pressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderLine(text: title,),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            onPressed: pressed,
            child: Text(
              "More",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
