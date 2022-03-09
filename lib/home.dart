import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';
import 'package:whatsapp_clone/widgets/app_bar/my_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [MyAppBar()];
          },
          body: TabBarView(
            children: [ChatsScreen(), StatusSCreen(), CallScreen()],
          ),
        )));
  }
}
