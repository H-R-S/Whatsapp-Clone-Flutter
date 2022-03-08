import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_container.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ChatContainer(
            onTap: () {},
            image: "assets/logos/whatsapp_logo.png",
            name: "Whatsapp",
            currentMessage: "Welcome to Whatsapp clone",
            isStatus: false,
            isAddStatus: false,
            isCall: false,
          ),
          ChatContainer(
            onTap: () {},
            image: "assets/images/my_image.jpg",
            name: "Haris",
            currentMessage: "Assalamualikum",
            isStatus: false,
            isAddStatus: false,
            isCall: false,
          ),
          ChatContainer(
            onTap: () {},
            image: "null",
            name: "Clone",
            currentMessage:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            isStatus: false,
            isAddStatus: false,
            isCall: false,
          ),
          ChatContainer(
            onTap: () {},
            image: "null",
            name: "Flutter",
            currentMessage:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            isStatus: false,
            isAddStatus: false,
            isCall: false,
          ),
          ChatContainer(
            onTap: () {},
            image: "null",
            name: "Clone",
            currentMessage:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            isStatus: false,
            isAddStatus: false,
            isCall: false,
          ),
          ChatContainer(
            onTap: () {},
            image: "null",
            name: "Flutter",
            currentMessage:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            isStatus: false,
            isAddStatus: false,
            isCall: false,
          ),
          ChatContainer(
            onTap: () {},
            image: "null",
            name: "Clone",
            currentMessage:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            isStatus: false,
            isAddStatus: false,
            isCall: false,
          ),
          ChatContainer(
            onTap: () {},
            image: "null",
            name: "Flutter",
            currentMessage:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            isStatus: false,
            isAddStatus: false,
            isCall: false,
          ),
        ],
      ),
    );
  }
}
