import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      toolbarHeight: 49,
      pinned: true,
      expandedHeight: 110,
      backgroundColor: Color(0xff128c7e),
      title: Text('WhatssApp'),
      actions: [
        Icon(Icons.search),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.more_vert),
        )
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
    );
  }
}
