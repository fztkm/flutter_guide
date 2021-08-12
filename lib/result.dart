import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;
  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String result = "You did it. Score $resultScore";
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(
              onPressed: reset,
              child: Text(
                'Restart',
                style: TextStyle(fontSize: 20.0),
              )),
        ],
      ),
    );
  }
}
