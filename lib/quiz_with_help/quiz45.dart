import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/quiz46.dart';
import 'package:untitled/quiz_with_help/sketcher.dart';
import '../drawnline.dart';

class QWHQuiz45 extends StatefulWidget {
  const QWHQuiz45({Key? key}) : super(key: key);

  @override
  State<QWHQuiz45> createState() => _QWHQuiz45State();
}

class _QWHQuiz45State extends State<QWHQuiz45> {
  List<DrawnLine> lines = <DrawnLine>[];
  Color selectedColor = Colors.red;
  double selectedWidth = 5.0;
  late DrawnLine line = DrawnLine([Offset(0, 0)], selectedColor, selectedWidth);
  var countTap = 0;
  var endPoint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("문제 45"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "도움받아 해결하기",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "다음 도형을 잘보고\n같은 도형을 찾아 색칠하세요.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Image.asset('assets/images/with_help/show_square.PNG'),
            Container(
                child: Expanded(child: buildCurrentPath(context))/*CustomPaint(
                    child: Container(color: Colors.yellow,),
                    painter: MyCustomPainter(),
                  ),*/
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
                        builder: (context) => const QWHQuiz46()));
                  },
                  child: Text("다음"),
                )
              ],
            )
          ],
        )
    );
  }

  GestureDetector buildCurrentPath(BuildContext context){
    return GestureDetector(
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      child: LayoutBuilder(
          builder: (_, constraints) {
            return RepaintBoundary(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage('assets/images/with_help/show_square2.PNG'))
                ),
                width: constraints.widthConstraints().maxWidth,
                height: constraints.widthConstraints().maxHeight,
                child: CustomPaint(
                    painter: Sketcher(lines: lines)
                ),
              ),
            );
          }
      ),
    );
  }

  void onPanStart(DragStartDetails details){
    print('User started drawing');
    final box = context.findRenderObject() as RenderBox;
    final point = details.localPosition;
    print(point);
    print("length of lines: ${lines.length}");

    setState(() {
      line = DrawnLine([point], selectedColor, selectedWidth);
    });
  }

  void onPanUpdate(DragUpdateDetails details){
    final box = context.findRenderObject() as RenderBox;
    final point = details.localPosition;
    print(point);
    final path = List<Offset>.from(line.path)..add(point);
    line = DrawnLine(path, selectedColor, selectedWidth);

    setState(() {
      if(lines.length == 0){
        lines.add(line);
      } else{
        lines[lines.length-1] = line;//To update the current block of lines not afterward
      }
    });
  }

  void onPanEnd(DragEndDetails details){
    setState(() {
      print('User ended drawing');
      lines.add(line);
    });
  }
}
