import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: Colors.grey.shade300,
            height: 90,
            child: Column(children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/my_image.jpg")),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Haris",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text("12:13 pm",
                                  style: TextStyle(fontSize: 12)),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Text("Assalamualikum",
                            style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  )
                ],
              )
            ])),
      ],
    );
  }
}
