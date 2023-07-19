import 'package:flutter/material.dart';

enum ButtonState { choosen, mistake, correct, unchoosen }

class Word extends StatefulWidget {
  const Word({super.key, required this.word});

  final String word;

  @override
  State<Word> createState() => _WordState();
}

class _WordState extends State<Word> {
  MaterialColor _containerColor = Colors.blue; // Initial color
  ButtonState state = ButtonState.unchoosen;

  void _changeColor() {
    setState(() {
      switch (state) {
        case ButtonState.choosen:
          _containerColor = Colors.blue;
          break;
        case ButtonState.mistake:
          _containerColor = Colors.red;
          break;
        case ButtonState.correct:
          _containerColor = Colors.green;
          break;
        case ButtonState.unchoosen:
          _containerColor = Colors.grey;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        padding: const EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          color: _containerColor[200],
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          widget.word,
          style: TextStyle(color: _containerColor[800]),
        ),
      ),
    );
  }
}
