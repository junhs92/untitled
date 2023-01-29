import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz5.dart';

class QWHQuiz4 extends StatefulWidget {
  const QWHQuiz4({Key? key}) : super(key: key);

  @override
  State<QWHQuiz4> createState() => _QWHQuiz4State();
}

class _QWHQuiz4State extends State<QWHQuiz4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 4"),
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
            "다음 그림들 중 겨울에 해당하는 \n그림을 찾아 설명해주세요",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20,),
          Expanded(
              child: Image(image: AssetImage('assets/images/with_help/find_winter.jpg'),)
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
                      builder: (context) => QWHQuiz5()));
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
