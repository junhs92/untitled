import 'package:flutter/material.dart';
import 'package:finger_painter/finger_painter.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:untitled/quiz_with_help/quiz37.dart';

class QWHQuiz36 extends StatefulWidget {
  const QWHQuiz36({Key? key}) : super(key: key);

  @override
  State<QWHQuiz36> createState() => _QWHQuiz36State();
}

class _QWHQuiz36State extends State<QWHQuiz36> {
  Image image = Image.asset("assets/images/with_help/draw_order2.PNG");
  late PainterController painterController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    painterController = PainterController()..setStrokeColor(Colors.black)
    ..setBlurSigma(0.0)..setPenType(PenType.pencil)..setBlendMode(ui.BlendMode.srcOver);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 36"),
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
                  "다음의 숫자를 큰 숫자에서 작은 숫자 순으로 연결하세요",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "(예: 10 -> 1)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 30,),
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    child: Painter(
                      controller: painterController,
                      onDrawingEnded: (bytes)async {
                        print('${painterController.getPoints()?.length} drawn points');
                        setState(() {
                        });
                      },
                      size: const Size(double.infinity, 570),
                      child: image,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        painterController.clearContent(clearColor: Colors.transparent);
                        Navigator.pop(context);
                      },
                      child: Text("이전"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const QWHQuiz37()));
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
