import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widget/CategoryCardListView.dart';
import 'package:flutter_application_2/Widget/ListViewScreenBuilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text('Cloud', style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: CategoryCardListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          ListViewScreenBuilder(
            category: 'general',
          ),
        ]),

        /* child: Column(
          children: [
            CategoryCardListView(),
            SizedBox(
              height: 30,
            ),
            Expanded(child: ListViewScreen()),
          ],
        ),*/
      ),
    );
  }
}
