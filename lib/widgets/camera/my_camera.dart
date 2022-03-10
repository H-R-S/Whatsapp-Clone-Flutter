import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras = <CameraDescription>[];

class MyCamera extends StatefulWidget {
  @override
  State<MyCamera> createState() => _MyCameraState();
}

class _MyCameraState extends State<MyCamera> {
  late CameraController cameraController;
  late Future<void> cameraValue;

  @override
  void initState() {
    super.initState();
    cameraController = CameraController(cameras[0], ResolutionPreset.ultraHigh);
    cameraValue = cameraController.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FutureBuilder(
              future: cameraValue,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(cameraController);
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
          Positioned(
            bottom: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: const Icon(
                          Icons.flash_off,
                          size: 38,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: const Icon(
                          Icons.circle_outlined,
                          size: 38,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: const Icon(
                          Icons.flip_camera_ios_rounded,
                          size: 38,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  ],
                ),
                const SizedBox(height: 20),
                const Text("Hold for video, tap for photo",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                    textAlign: TextAlign.center)
              ]),
            ),
          )
        ],
      ),
    );
  }
}
