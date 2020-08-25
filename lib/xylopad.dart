import 'package:flutter/material.dart';

class XyloPad extends StatelessWidget {
  /*
  Class representing the music 'tile'.
  Each object takes an input of a music filename to play
  and a color associated with the tile.
  */

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
