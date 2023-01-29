import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz4.dart';

class QWHQuiz3 extends StatefulWidget {
  const QWHQuiz3({Key? key}) : super(key: key);

  @override
  State<QWHQuiz3> createState() => _QWHQuiz3State();
}

class _QWHQuiz3State extends State<QWHQuiz3> {

  List<String> lists = [
    "assets/images/spring.jpg",
    "assets/images/summer.jpg",
    "assets/images/fall.jpg",
    "assets/images/winter.jpg",
  ];

  @override
  Widget build(BuildContext context) {

    lists.shuffle();

    return Scaffold(
        appBar: AppBar(
          title: Text("문제 3"),
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
                "다음 그림들 중 여름에 해당하는 \n그림을 찾아 설명해주세요",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemBuilder: (BuildContext context, int index){
                      return Center(
                        child:
                          Image(image: AssetImage(lists.elementAt(index)),),
                      );
                    }
                ),
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
                          builder: (context) => const QWHQuiz4()));
                    },
                    child: Text("다음"),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
