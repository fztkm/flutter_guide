import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      print('Answer question');
      _questionIndex++;
    });
  }

  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': ['Black', 'White', 'Blue', 'Red'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answer': ['Max', 'Max', 'Max', 'Lion'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('question'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'].toString(),
            ),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((String answer) => Answer(answerQuestion, answer))
                .toList(),
          ],
        ),
      ),
    );
  }
}
