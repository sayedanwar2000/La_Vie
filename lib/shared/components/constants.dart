
import 'package:flutter/material.dart';



List<Widget> positionedImages() => const [
  PositionedDirectional(
    top: -12,
    end: -12,
    child: Image(image: AssetImage("assets/images/Traced1.png")),
  ),
  PositionedDirectional(
    bottom: -10,
    start: -10,
    child: Image(
      image: AssetImage("assets/images/Traced2.png"),
    ),
  ),
];
