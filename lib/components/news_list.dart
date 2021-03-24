
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
      child: Row(
        children: [
          NewsCard(
            image: "assets/images/news.jpg",
            title: "Addis Abeba",
            price: 500,
            press: () {},
          ),
          NewsCard(
            image: "assets/images/news2.jpg",
            title: "Bahrdar",
            price: 300,
            press: () {},
          ),
          NewsCard(
            image: "assets/images/news.jpg",
            title: "Gonder",
            price: 550,
            press: () {},
          ),
          NewsCard(
            image: "assets/images/news2.jpg",
            title: "Mekele",
            price: 700,
            press: () {},
          ),
        ],
      ),
    );
  }
}

