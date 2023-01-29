import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz34.dart';
import 'package:untitled/quiz_with_help/quiz41.dart';

class QWHQuiz40 extends StatefulWidget {
  const QWHQuiz40({Key? key}) : super(key: key);

  @override
  State<QWHQuiz40> createState() => _QWHQuiz40State();
}

class _QWHQuiz40State extends State<QWHQuiz40> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 40"),
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
                  "동요를 같이 부른 후 \n괄호안의 가사를 혼자 불러보세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/sing1.jpg')
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
                            builder: (context) => const QWHQuiz41()));
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
