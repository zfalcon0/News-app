
import 'package:dbu_news/components/news_card.dart';
import 'package:flutter/material.dart';



class NewsList extends StatelessWidget {
  const NewsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NewsCard(
            image: "assets/images/news.jpg",
            title: "News 1",
            description: "News 1 description",
            press: () {},
          ),
          NewsCard(
            image: "assets/images/news2.jpg",
            title: "News 2 ",
            description: "News 2 description",
            press: () {},
          ),
          NewsCard(
            image: "assets/images/news.jpg",
            title: "News 3 ",
            description: "News 3 description",
            press: () {},
          ),
          NewsCard(
            image: "assets/images/news2.jpg",
            title: "news 4",
            description: "News 4 description",
            press: () {},
          ),
        ],
      ),
    );
  }
}

