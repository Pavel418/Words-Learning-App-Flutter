import 'package:flutter/material.dart';
import 'word.dart';

class WordPairLine extends StatefulWidget {
  const WordPairLine({super.key});

  @override
  State<WordPairLine> createState() => _WordPairLineState();
}

class _WordPairLineState extends State<WordPairLine> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Padding(padding: EdgeInsets.symmetric(horizontal: 12.0)),
        Word(word: "cat"),
        Spacer(),
        Word(word: "chat"),
        Padding(padding: EdgeInsets.symmetric(horizontal: 12.0)),
      ],
    );
  }
}
