import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz26.dart';

class QWHQuiz25 extends StatefulWidget {
  const QWHQuiz25({Key? key}) : super(key: key);

  @override
  State<QWHQuiz25> createState() => _QWHQuiz25State();
}

class _QWHQuiz25State extends State<QWHQuiz25> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 25"),
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
                  "다음 동물이 내는 소리를 따라서 해보세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                    child: Image.asset('assets/images/with_help/rooster.jpg')
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
                            builder: (context) => const QWHQuiz26()));
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
