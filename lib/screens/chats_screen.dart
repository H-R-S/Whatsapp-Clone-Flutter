import 'package:flutter/material.dart';
import '../constants/style.dart';
import '../data/user_data.dart';
import '../widgets/chat_list.dart';

class ChatsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: const Color(0xff128c7e),
        title: Text(
          user_info[1]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.attach_file_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                hintText: 'Type a message!',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
