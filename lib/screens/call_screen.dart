import 'package:flutter/material.dart';

import '../widgets/chat_container.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ChatContainer(
          onTap: () {},
          image: "assets/logos/whatsapp_logo.png",
          name: "Whatsapp",
          currentMessage: "Today, " +
              DateTime.now().hour.toString() +
              ":" +
              DateTime.now().minute.toString() +
              " PM",
          isStatus: true,
          isAddStatus: false,
          isCall: true,
        ),
        ChatContainer(
          onTap: () {},
          image: "assets/logos/whatsapp_logo.png",
          name: "Whatsapp",
          currentMessage: "Yesterday, " +
              DateTime.now().hour.toString() +
              ":" +
              DateTime.now().minute.toString() +
              " PM",
          isStatus: true,
          isAddStatus: false,
          isCall: true,
        ),
      ]),
    );
  }
}
