import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';
import 'package:whatsapp_clone/widgets/app_bar/my_app_bar.dart';
import 'package:whatsapp_clone/widgets/camera/my_camera.dart';

class HomeScreen extends StatelessWidget {
  int _initialIndex = 1;

  @override
  Widget build(BuildContext context) {
    IconData? _icon() {
      if (_initialIndex != 1) {
        return Icons.chat;
      } else if (_initialIndex != 2) {
        return Icons.camera_alt_outlined;
      } else {
        return Icons.add_call;
      }
    }

    return DefaultTabController(
        initialIndex: _initialIndex,
        length: 4,
        child: Scaffold(
            floatingActionButton: DefaultTabController.of(context)?.index != 0
                ? FloatingActionButton(
                    backgroundColor: const Color(0xff128c7e),
                    child: Icon(
                      _icon(),
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => MyCamera()));
                    })
                : null,
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [MyAppBar()];
              },
              body: TabBarView(
                children: [
                  CameraScreen(),
                  ChatsScreen(),
                  StatusSCreen(),
                  CallScreen()
                ],
              ),
            )));
  }
}
