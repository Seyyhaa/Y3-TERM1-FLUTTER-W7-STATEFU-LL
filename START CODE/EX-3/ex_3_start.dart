import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
    home: const ImageViews(),
  ),
);

class ImageViews extends StatefulWidget {
  const ImageViews({super.key});

  @override
  State<ImageViews> createState() => _ImageViewsState();
}

class _ImageViewsState extends State<ImageViews> {
  int startIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: () {
              setState(() {
                if (startIndex == 0) {
                  startIndex = images.length - 1;
                } else {
                  startIndex--;
                }
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: () => {
                setState(() {
                  if (startIndex == images.length - 1) {
                    startIndex = 0;
                  } else {
                    startIndex++;
                  }
                }),
              },
            ),
          ),
        ],
      ),
      body: Image.asset(images[startIndex]),
    );
  }
}
