import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz31.dart';

class QWHQuiz30 extends StatefulWidget {
  const QWHQuiz30({Key? key}) : super(key: key);

  @override
  State<QWHQuiz30> createState() => _QWHQuiz30State();
}

class _QWHQuiz30State extends State<QWHQuiz30> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 30"),
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
                  "다음 단어를 시작으로 끝말잇기해보세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),

                Expanded(
                    child: Image.asset('assets/images/with_help/word_relay.jpg')
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
                            builder: (context) => const QWHQuiz31()));
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
