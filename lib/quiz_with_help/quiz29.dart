import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz30.dart';

class QWHQuiz29 extends StatefulWidget {
  const QWHQuiz29({Key? key}) : super(key: key);

  @override
  State<QWHQuiz29> createState() => _QWHQuiz29State();
}

class _QWHQuiz29State extends State<QWHQuiz29> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 29"),
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
                  "다음 그림의 명칭을 말하고\n어울리는 노래를 불러주세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/liberation.jpg')
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
                            builder: (context) => const QWHQuiz30()));
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
