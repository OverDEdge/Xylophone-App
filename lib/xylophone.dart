import 'package:flutter/material.dart';

import './xylopad.dart';

class XyloPhone extends StatelessWidget {
  /*
  Class containing the main body of the Xylophone app:
  - AppBar
  - Music Tiles
  */

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
          /*
          This expands the xyloPadSettings and creates a 'music tile'
          for each pad in the settings.
          There is no need to typeset the variables since it is done
          in XyloPad constructor.
          */
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
