import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xff128c7e),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "CHATS"),
                Tab(text: "STATUS"),
                Tab(text: "CALLS"),
              ],
            ),
            title: const Text('WhatssApp'),
            actions: const [
              Icon(Icons.search),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
          body: TabBarView(
            children: [ChatsScreen(), StatusSCreen(), CallScreen()],
          ),
        ),
      ),
    );
  }
}
