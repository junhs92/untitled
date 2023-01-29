import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz32.dart';

class QWHQuiz31 extends StatefulWidget {
  const QWHQuiz31({Key? key}) : super(key: key);

  @override
  State<QWHQuiz31> createState() => _QWHQuiz31State();
}

class _QWHQuiz31State extends State<QWHQuiz31> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 31"),
        ),

        body: Container(
          alignment: Alignment.center,
          child: Column(
              children: [
                SizedBox(height: 10,),
                Text(
                  "도움받아 해결하기",
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  "특정 단어로 끝나는 단어를 나열하기",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "단어 1: -리로 끝나는 단어",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/endwith.jpg')
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("이전"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const QWHQuiz32()));
                      },
                      child: Text("다음"),
                    )
                  ],
                )
              ]
          ),
        )
    );
  }
}
