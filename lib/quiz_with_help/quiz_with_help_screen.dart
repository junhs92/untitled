import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz1.dart';

class QuizWithHelpScreen extends StatefulWidget {
  const QuizWithHelpScreen({Key? key}) : super(key: key);

  @override
  State<QuizWithHelpScreen> createState() => _QuizWithHelpScreenState();
}

class _QuizWithHelpScreenState extends State<QuizWithHelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("도움받아 해결하기"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text(
              "도움받아 해결하기",
              style: TextStyle(
                fontSize: 40
              ),

            ),
            SizedBox(height: 20,),
            Text(
              "이 활동은 인지능력 향상을 위한 종합적인 문제로 구성되어있습니다.\n"
                  "다른 사람의 도움을 받아도 좋습니다. 함께 활동해보세요.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const QWHQuiz1())
                );
              },
              child:
                Text("시작하기"),
            )
          ],
        ),
      ),
    );
  }
}
