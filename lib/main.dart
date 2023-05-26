import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import "./question.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  final List<Map<String, dynamic>> question = [
    {
      "questionText": " What is your favorate color?",
      "answer": ["Black", "Red", " Blue", "Green"]
    },
    {
      "questionText": "What is your favorite food?",
      "answer": ["Piza", "vegi", "anduch", "dulet"]
    },
    {
      "questionText": "What is your favorite programming languge?",
      "answer": ["Java", "c++", "Dart", "js"]
    }
  ];

  int _answerQuestion() {
    if (_questionIndex < question.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    }
    return _questionIndex;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Quiz App")),
      body: _questionIndex < question.length
          ? Column(
              children: <Widget>[
                Question(question[_questionIndex]['questionText']),
                ...(question[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )
          : Center(
              child: Text("You did it"),
            ),
    ));
  }
}
