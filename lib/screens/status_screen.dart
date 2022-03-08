import 'package:flutter/material.dart';
import '../widgets/chat_container.dart';

class StatusSCreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ChatContainer(
          onTap: () {},
          image: "assets/images/my_image.jpg",
          name: "My Status",
          currentMessage: "Tap to add status update",
          isStatus: true,
          isAddStatus: true,
          isCall: false,
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Recent updates",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey),
          ),
        ),
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
          isCall: false,
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Viewed updates",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey),
          ),
        ),
        ChatContainer(
          onTap: () {},
          image: "assets/logos/whatsapp_logo.png",
          name: "Whatsapp Clone",
          currentMessage: "Yesterday, " +
              DateTime.now().hour.toString() +
              ":" +
              DateTime.now().minute.toString() +
              " PM",
          isStatus: true,
          isAddStatus: false,
          isCall: false,
        ),
      ]),
    );
  }
}
