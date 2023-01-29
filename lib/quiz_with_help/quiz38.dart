import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz34.dart';
import 'package:untitled/quiz_with_help/quiz39.dart';

class QWHQuiz38 extends StatefulWidget {
  const QWHQuiz38({Key? key}) : super(key: key);

  @override
  State<QWHQuiz38> createState() => _QWHQuiz38State();
}

class _QWHQuiz38State extends State<QWHQuiz38> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 38"),
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
                  "다음 단어를 큰 소리로 읽어보세요\n (글자에 집중)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "(유형 1: 글자와 색깔이 동일)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/color.jpg')
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
                            builder: (context) => const QWHQuiz39()));
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
