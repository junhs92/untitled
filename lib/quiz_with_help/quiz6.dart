import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz7.dart';

class QWHQuiz6 extends StatefulWidget {
  const QWHQuiz6({Key? key}) : super(key: key);

  @override
  State<QWHQuiz6> createState() => _QWHQuiz6State();
}

class _QWHQuiz6State extends State<QWHQuiz6> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 6"),
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  "다음 그림을 '봄-여름-가을-겨울'\n순서대로 찾아 설명해주세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20,),
                Expanded(
                    child: Image.asset('assets/images/with_help/order_seasons2.jpg')
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
                            builder: (context) => const QWHQuiz7()));
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
