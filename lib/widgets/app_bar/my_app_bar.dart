import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 50,
      pinned: true,
      expandedHeight: 110,
      backgroundColor: const Color(0xff128c7e),
      title: const Text('WhatssApp'),
      actions: [
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
                icon: const Icon(Icons.more_vert), onPressed: () {})),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(-2),
        child: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt_rounded)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
    );
  }
}
