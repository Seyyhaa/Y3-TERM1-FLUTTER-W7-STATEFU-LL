import 'package:flutter/material.dart';



void main() => runApp(
  MaterialApp(
    home: Scaffold(appBar: AppBar(title: const Text("Custom buttons")),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Buttons(),
        SizedBox(height: 20),
        Buttons(),
        SizedBox(height: 20),
        Buttons(),
        SizedBox(height: 20),
        Buttons(),
        
      ],
    ),
  )),
);

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  bool isSelected = false;

  String get labelText => isSelected ? "Selected" : "Not Selected";
  Color get textColor => isSelected ? Colors.white : Colors.black;
  Color get buttonColor =>
      isSelected ? Colors.blue.shade500 : Colors.blue[100]!;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 500,
        height: 168,
        child: ElevatedButton(
          onPressed: () => {
            setState(() {
              isSelected = !isSelected;
            }),
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            foregroundColor: textColor,
          ),
          child: Center(
            child: Text(labelText,style: const TextStyle(fontSize: 42),),
          ),
        ),
      ),
    );
  }
}
