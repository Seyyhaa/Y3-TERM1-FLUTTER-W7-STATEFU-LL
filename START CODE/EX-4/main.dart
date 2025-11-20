import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.green,

      body: Padding(
        padding: EdgeInsets.only(top: 40),

        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            MyScore(title: "Flutter", color: Colors.blue),
            const SizedBox(height: 30),
            MyScore(title: "DART", color: Colors.pink),
            const SizedBox(height: 30),
            MyScore(title: "REACT", color: Colors.red),
          ],
        ),
      ),
    ),
  ),
);

class MyScore extends StatefulWidget {
  final String title;
  final Color color;

  const MyScore({super.key, required this.title, required this.color});

  @override
  State<MyScore> createState() => _MyScoreState();
}

class _MyScoreState extends State<MyScore> {
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 68),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "My score in ${widget.title}",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (score > 0) score--;
                      });
                    },
                  ),

                  const SizedBox(width: 200, height: 25),

                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        if (score < 10) score++;
                      });
                    },
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(

                    width: 250,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    width: (score / 10) * 250,
                    height: 35,
                    decoration: BoxDecoration(
                      color: widget.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
