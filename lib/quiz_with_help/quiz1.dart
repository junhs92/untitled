import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz2.dart';

class QWHQuiz1 extends StatefulWidget {
  const QWHQuiz1({Key? key}) : super(key: key);

  @override
  State<QWHQuiz1> createState() => _QWHQuiz1State();
}

class _QWHQuiz1State extends State<QWHQuiz1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 1"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "도움받아 해결하기",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "나와 가족 관계에 대하여",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              firstQ,
              secondQ,
              thirdQ,
              forthQ,
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
                          builder: (context) => const QWHQuiz2()));
                    },
                    child: Text("다음"),
                  )
                ],
              )
            ],
          ),
        ));
  }

  final firstQ = Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Text("가족은 모두 몇명입니까?"),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ],
    ),
  );
  final secondQ = Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("결혼은 언제 하셨습니까?"),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ],
    ),
  );
  final thirdQ = Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Text("자녀는 모두 몇 명입니까?"),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ],
    ),
  );
  final forthQ = Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Text("제일 좋아하는 가족은 누구입니까?"),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ],
    ),
  );
}
