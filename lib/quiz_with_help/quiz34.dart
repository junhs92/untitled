import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz35.dart';

class QWHQuiz34 extends StatefulWidget {
  const QWHQuiz34({Key? key}) : super(key: key);

  @override
  State<QWHQuiz34> createState() => _QWHQuiz34State();
}

class _QWHQuiz34State extends State<QWHQuiz34> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 34"),
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
                  "다음 그림을 보고 어떤 그림인지 설명해주세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/thanksgiving.jpg')
                ),Text(
                  "*그림에 대한 설명이 어려울 경우, 질문의 범위를 좁혀준다.\n"
                      "\"남자가 어떤 운동을 하고 있는지 설명해주세요\"",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10),
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
                            builder: (context) => const QWHQuiz35()));
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
