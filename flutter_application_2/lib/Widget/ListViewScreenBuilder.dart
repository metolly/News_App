import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Services/News_Servise.dart';
import 'package:flutter_application_2/Widget/News_list_View.dart';
import 'package:flutter_application_2/models/article_model.dart';

class ListViewScreenBuilder extends StatefulWidget {
  final String category;

  const ListViewScreenBuilder({super.key, required this.category});
  @override
  State<ListViewScreenBuilder> createState() => _ListViewScreenBuilderState();
}

class _ListViewScreenBuilderState extends State<ListViewScreenBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<articleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListViewScreen(article: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('try Again later'),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
