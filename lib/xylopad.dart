import 'package:flutter/material.dart';

class XyloPad extends StatelessWidget {
  final Function playSound;
  final Color color;
  final double _padPadding = 4.0, _padButtonRadius = 10.0;

  XyloPad(this.playSound, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(_padPadding),
      child: FlatButton(
        onPressed: playSound,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_padButtonRadius),
        ),
        child: null,
      ),
    );
  }
}
