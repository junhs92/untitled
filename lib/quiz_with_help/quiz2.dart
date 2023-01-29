import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz3.dart';

class QWHQuiz2 extends StatefulWidget {
  const QWHQuiz2({Key? key}) : super(key: key);

  @override
  State<QWHQuiz2> createState() => _QWHQuiz2State();
}

class _QWHQuiz2State extends State<QWHQuiz2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 2"),
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
                "자녀, 배우자, 형제 등 가족에 대하여",
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
                          builder: (context) => const QWHQuiz3()));
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
        Expanded(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text("의 이름이 무엇입니까?"),

      ],
    ),
  );
  final secondQ = Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text("의 나이는 몇살입니까?"),
      ],
    ),
  );
  final thirdQ = Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text("의 집 주소는 어디입니까?"),
      ],
    ),
  );
  final forthQ = Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text("의 직업은 무엇입니까?"),
      ],
    ),
  );
}
