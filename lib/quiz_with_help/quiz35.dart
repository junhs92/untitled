import 'package:flutter/material.dart';
import 'package:finger_painter/finger_painter.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:untitled/quiz_with_help/quiz36.dart';

class QWHQuiz35 extends StatefulWidget {
  const QWHQuiz35({Key? key}) : super(key: key);

  @override
  State<QWHQuiz35> createState() => _QWHQuiz35State();
}

class _QWHQuiz35State extends State<QWHQuiz35> {
  Image image = Image.asset("assets/images/with_help/draw_order.PNG");
  late PainterController painterController;
  late final imgData;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    painterController = PainterController()..setStrokeColor(Colors.black)
    ..setBlurSigma(0.0)..setPenType(PenType.pencil)..setBlendMode(ui.BlendMode.srcOver);
    loadAsset("draw_order.PNG");
  }

  void loadAsset(String name) async{
    var data = await rootBundle.load("assets/images/with_help/$name");
    setState(() {
      this.imgData = data;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 35"),
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
                  "다음의 숫자와 자음들을\n숫자-자음 순으로 번갈아 연결하세요.\n",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "(예: 1 -> ㄱ -> 2 -> ㄴ)",
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
                      size: const Size(500, 530),
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
                            builder: (context) => const QWHQuiz36()));
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
