import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz_with_help_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Demo")
        ),
      body: Center(
        child: ListView(//나중에 List.builder 형식으로 만들어보자
          padding: const EdgeInsets.symmetric(horizontal: 40),
          children: [
              SizedBox(height: 50,),
              Text(
                "Quiz List Screen",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(
                "도움 받아 해결하기",
                style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const QuizWithHelpScreen()
                      )
                  );
                },
                child: Text('시작하기'),
              ),
              SizedBox(height: 20,),
              Text(
                "혼자서 해결하기",
                style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const QuizWithHelpScreen()
                        )
                    );
                  },
                  child: Text('지남력 증진 활동')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const QuizWithHelpScreen()
                        )
                    );
                  },
                  child: Text('집중력 증진 활동')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const QuizWithHelpScreen()
                        )
                    );
                  },
                  child: Text('기억력 증진 활동')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const QuizWithHelpScreen()
                        )
                    );
                  },
                  child: Text('계산능력 증진 활동')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const QuizWithHelpScreen()
                        )
                    );
                  },
                  child: Text('시지각 증진 활동')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const QuizWithHelpScreen()
                        )
                    );
                  },
                  child: Text('공간지각 증진 활동')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const QuizWithHelpScreen()
                        )
                    );
                  },
                  child: Text('문제해결력 증진 활동')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const QuizWithHelpScreen()
                        )
                    );
                  },
                  child: Text('사고조직력 증진 활동')),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const QuizWithHelpScreen()
                        )
                    );
                  },
                  child: Text('실행능력 증진 활동')),
          ],
        ),
      )
    );
  }
}
