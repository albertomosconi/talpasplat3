import 'package:flutter/material.dart';
import 'package:talpasplat3/game_controller.dart';

class StartText {
  final GameController gameController;
  TextPainter painter;
  Offset position;

  StartText(this.gameController) {
    painter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    position = Offset.zero;
  }

  void render(Canvas c) {
    painter.paint(c, position);
  }

  void update(double t) {
    painter.text = TextSpan(
        text: 'tap the screen to start...',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            shadows: <Shadow>[
              Shadow(
                  blurRadius: 7, color: Color(0xff000000), offset: Offset(3, 3))
            ]));
    painter.layout();

    position = Offset(
      (gameController.screenSize.width / 2) - (painter.width / 2),
      (gameController.screenSize.height * 0.75) - (painter.height / 2),
    );
  }
}
