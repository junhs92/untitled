import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz13.dart';

class QWHQuiz12 extends StatefulWidget {
  const QWHQuiz12({Key? key}) : super(key: key);

  @override
  State<QWHQuiz12> createState() => _QWHQuiz12State();
}

class _QWHQuiz12State extends State<QWHQuiz12> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 12"),
        ),

        body: Container(
          alignment: Alignment.center,
          child: Column(
              children: [
                SizedBox(height: 50,),
                Text(
                  "도움받아 해결하기",
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  "아래 사람의 직업은 무엇인가요?\n"
                      "무엇을 하는 사람인가요?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/singer.jpg')
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
                            builder: (context) => const QWHQuiz13()));
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
