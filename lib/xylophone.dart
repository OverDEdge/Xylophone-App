import 'package:flutter/material.dart';

import './xylopad.dart';

class XyloPhone extends StatelessWidget {
  final Function playSound;
  final List<Map<String, Object>> xyloPadSettings;
  final double _appBarFontSize = 20.0, _barToXyloPadding = 4.0;

  XyloPhone(this.playSound, this.xyloPadSettings);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: _barToXyloPadding),
          child: AppBar(
            title: Text(
              'XYLOPHONE',
              style: TextStyle(
                fontSize: _appBarFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.teal[900],
            centerTitle: true,
          ),
        ),
        ...(xyloPadSettings).map((setting) {
          return Expanded(
            child: XyloPad(
              () => playSound(setting['filename']),
              setting['color'],
            ),
          );
        }).toList()
      ],
    );
  }
}
