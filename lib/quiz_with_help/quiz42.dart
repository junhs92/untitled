import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz34.dart';
import 'package:untitled/quiz_with_help/quiz43.dart';

class QWHQuiz42 extends StatefulWidget {
  const QWHQuiz42({Key? key}) : super(key: key);

  @override
  State<QWHQuiz42> createState() => _QWHQuiz42State();
}

class _QWHQuiz42State extends State<QWHQuiz42> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 42"),
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
                  "동요를 같이 부른 후 \n 2절부터 혼자 불러보세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/sing3.jpg')
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
                            builder: (context) => const QWHQuiz43()));
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
