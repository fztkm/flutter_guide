import 'package:flutter/material.dart';
import './question.dart';

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
  var count = 0;

  void answerQuestion() {
    setState(() {
      print('Answer question');
      count++;
    });
  }

  List<String> list = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
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
            Question(list.elementAt(count)),
            RaisedButton(child: Text('Answer1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer3'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
