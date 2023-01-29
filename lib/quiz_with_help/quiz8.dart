import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz7.dart';
import 'package:untitled/quiz_with_help/quiz9.dart';

class QWHQuiz8 extends StatefulWidget {
  const QWHQuiz8({Key? key}) : super(key: key);

  @override
  State<QWHQuiz8> createState() => _QWHQuiz8State();
}

class _QWHQuiz8State extends State<QWHQuiz8> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 8"),
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
                  "다음 그림을 보고 무엇을 \n 하는 곳인지 설명해주세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "(그림 하나씩 가르키면서 설명하기)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 20,),
                Expanded(
                    child: Image.asset('assets/images/with_help/location_described2.jpg')
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
                            builder: (context) => const QWHQuiz9()));
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
