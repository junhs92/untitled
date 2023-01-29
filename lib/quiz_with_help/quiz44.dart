import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz34.dart';
import 'package:untitled/quiz_with_help/quiz45.dart';

class QWHQuiz44 extends StatefulWidget {
  const QWHQuiz44({Key? key}) : super(key: key);

  @override
  State<QWHQuiz44> createState() => _QWHQuiz44State();
}

class _QWHQuiz44State extends State<QWHQuiz44> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 44"),
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
                  "노래를 읽어보고\n혼자 불러보세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/sing5.jpg')
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
                            builder: (context) => const QWHQuiz45()));
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
