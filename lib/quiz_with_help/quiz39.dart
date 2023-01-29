import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz34.dart';
import 'package:untitled/quiz_with_help/quiz40.dart';

class QWHQuiz39 extends StatefulWidget {
  const QWHQuiz39({Key? key}) : super(key: key);

  @override
  State<QWHQuiz39> createState() => _QWHQuiz39State();
}

class _QWHQuiz39State extends State<QWHQuiz39> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 39"),
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
                  "다음 단어의 색깔을 큰 소리로 읽어보세요\n (색깔에 집중)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "(유형 1: 글자와 색깔이 다름)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/color2.jpg')
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
                            builder: (context) => const QWHQuiz40()));
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
