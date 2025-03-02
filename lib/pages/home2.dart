import 'package:flutter/material.dart';

import '../widget/icon_widget.dart';
import '../widget/text_widget.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 200,
        leading: IconWidget(icon: Icon(Icons.menu)),
        title: Text("Test"),
        centerTitle: true,
        actions: [
          Text("Hello"),
          SizedBox(
            width: 10,
          ),
          IconWidget(icon: Icon(Icons.search)),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: TextWidget(
                    text: "Welcome",
                    fontSize: 28,
                    color: Colors.white,
                  )),
                  CustomPaint(
                    painter: RPSCustomPainter1(),
                    size: Size(200, 200),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextWidget(
                    text: "My Name is De7koo,",
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  // SizedBox(
                  //   height: 300,
                  // ),
                  TextWidget(
                    text: "My Age",
                    fontSize: 28,
                    color: Colors.white,
                  ),
                  TextWidget(
                    text: "16",
                    fontSize: 28,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Expanded(
                    child: Center(
                        child: TextWidget(
                      text: "By",
                      fontSize: 28,
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: TextWidget(
                  text: "Welcome",
                  fontSize: 28,
                )),
                CustomPaint(
                  painter: RPSCustomPainter2(),
                  size: Size(200, 200),
                ),
                SizedBox(
                  height: 50,
                ),
                TextWidget(
                  text: "My Name is De7koo,",
                  fontSize: 22,
                ),
                // SizedBox(
                //   height: 300,
                // ),
                TextWidget(
                  text: "My Age",
                  fontSize: 28,
                ),
                TextWidget(
                  text: "16",
                  fontSize: 28,
                ),
                SizedBox(
                  height: 200,
                ),
                Expanded(
                  child: Center(
                      child: TextWidget(
                    text: "By",
                    fontSize: 28,
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1
    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3975000, size.height * 0.3583333);
    path_0.lineTo(size.width * 0.5016667, size.height * 0.2266667);
    path_0.lineTo(size.width * 0.5975000, size.height * 0.3716667);
    path_0.lineTo(size.width * 0.4983333, size.height * 0.5416667);
    path_0.lineTo(size.width * 0.3975000, size.height * 0.3583333);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1
    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3975000, size.height * 0.3583333);
    path_0.lineTo(size.width * 0.5016667, size.height * 0.2266667);
    path_0.lineTo(size.width * 0.5975000, size.height * 0.3716667);
    path_0.lineTo(size.width * 0.4983333, size.height * 0.5416667);
    path_0.lineTo(size.width * 0.3975000, size.height * 0.3583333);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
