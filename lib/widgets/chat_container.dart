import 'package:flutter/material.dart';

class ChatContainer extends StatelessWidget {
  final Function() onTap;
  final String image;
  final String name;
  final String currentMessage;
  final bool isStatus;
  final bool isAddStatus;
  final bool isCall;

  const ChatContainer(
      {required this.onTap,
      required this.image,
      required this.name,
      required this.currentMessage,
      required this.isStatus,
      required this.isAddStatus,
      required this.isCall});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
          height: 80,
          child: Column(children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: image.contains("null")
                        ? const Icon(
                            Icons.account_circle_rounded,
                            color: Colors.grey,
                            size: 50,
                          )
                        : Stack(children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                backgroundImage: AssetImage(image)),
                            isAddStatus == true
                                ? Positioned(
                                    top: 27,
                                    left: 27,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: const Icon(
                                        Icons.add_circle,
                                        color: Color(0xff128c7e),
                                      ),
                                    ))
                                : Container()
                          ])),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          isStatus == true
                              ? Container()
                              : Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                      DateTime.now().hour.toString() +
                                          ":" +
                                          DateTime.now().minute.toString() +
                                          " PM",
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.grey)),
                                )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                          currentMessage.length > 42
                              ? currentMessage.substring(0, 41) + "..."
                              : currentMessage,
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey))
                    ],
                  ),
                ),
                isCall != true
                    ? Container()
                    : const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.call,
                          size: 28,
                          color: Color(0xff128c7e),
                        )),
              ],
            )
          ])),
    );
  }
}
