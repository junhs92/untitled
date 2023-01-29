import 'package:flutter/material.dart';
import 'package:untitled/quiz_with_help/sketcher.dart';
import '../drawnline.dart';

class DrawTest extends StatefulWidget {
  const DrawTest({Key? key}) : super(key: key);

  @override
  State<DrawTest> createState() => _DrawTestState();
}

class _DrawTestState extends State<DrawTest> {
  List<DrawnLine> lines = <DrawnLine>[];
  Color selectedColor = Colors.black;
  double selectedWidth = 5.0;
  late DrawnLine line = DrawnLine([Offset(0, 0)], selectedColor, selectedWidth);
  var countTap = 0;
  var endPoint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("문제 46"),
      ),
      body: Column(
        children: [
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
                      builder: (context) => const Placeholder()));
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
      child: RepaintBoundary(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/winter.jpg'))
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: CustomPaint(
            painter: Sketcher(lines: lines)
          ),
        ),
      ),
    );
  }

  void onPanStart(DragStartDetails details){
    print('User started drawing');
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.globalPosition);
    print(point);
    print("length of lines: ${lines.length}");

    setState(() {
        line = DrawnLine([point], selectedColor, selectedWidth);
    });
  }

  void onPanUpdate(DragUpdateDetails details){
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.globalPosition);
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
