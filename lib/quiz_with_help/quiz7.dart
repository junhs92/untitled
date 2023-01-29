import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz8.dart';

class QWHQuiz7 extends StatefulWidget {
  const QWHQuiz7({Key? key}) : super(key: key);

  @override
  State<QWHQuiz7> createState() => _QWHQuiz7State();
}

class _QWHQuiz7State extends State<QWHQuiz7> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 7"),
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
                  "다음 질문에 해당하는 \n장소들을 찾아 설명해주세요.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10,),
                Text(
                  "공부하는 곳 -> 물건 파는 곳 -> 손 씻는 곳 -> 잠자는 곳",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 20,),
                Expanded(
                    child: Image.asset('assets/images/with_help/location_described.jpg')
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
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const QWHQuiz8())
                            );
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
