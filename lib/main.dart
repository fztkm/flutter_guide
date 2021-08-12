import 'package:flutter/material.dart';
import 'package:flutter_guide/quiz.dart';

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

  final _questions = const [
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
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: answerQuestion)
            : Center(
                child: Text('You did it.'),
              ),
      ),
    );
  }
}
