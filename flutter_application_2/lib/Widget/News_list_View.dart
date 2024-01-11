import 'package:flutter/material.dart';

import 'package:flutter_application_2/Widget/News_tile.dart';
import 'package:flutter_application_2/models/article_model.dart';

// ignore: must_be_immutable
class ListViewScreen extends StatelessWidget {
  List<articleModel> article = [];
  ListViewScreen({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: article.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsTile(
          article: article[index],
        ),
      );
    }));
  }
}
