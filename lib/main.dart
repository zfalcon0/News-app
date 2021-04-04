import 'package:flutter/material.dart';

import 'components/news_list.dart';
import 'components/title_with_more.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
              'News',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
       child: ListScreen(),
      ),
    ),
  ));
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        TitleWithMoreButton(
          title: "News",
          pressed: () {},
        ),
          NewsList(),
        ],
      ),
    );
  }
}
