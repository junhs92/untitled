import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz22.dart';

class QWHQuiz21 extends StatefulWidget {
  const QWHQuiz21({Key? key}) : super(key: key);

  @override
  State<QWHQuiz21> createState() => _QWHQuiz21State();
}

class _QWHQuiz21State extends State<QWHQuiz21> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 21"),
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
                  "좋아하는 과일에 대해 이야기 해보세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/favorite.jpg')
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
                            builder: (context) => const QWHQuiz22()));
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
