import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz12.dart';

class QWHQuiz11 extends StatefulWidget {
  const QWHQuiz11({Key? key}) : super(key: key);

  @override
  State<QWHQuiz11> createState() => _QWHQuiz11State();
}

class _QWHQuiz11State extends State<QWHQuiz11> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 11"),
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
                    child: Image.asset('assets/images/with_help/taxi.jpg')
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
                            builder: (context) => const QWHQuiz12()));
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
