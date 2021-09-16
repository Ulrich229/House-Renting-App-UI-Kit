import 'package:flutter/material.dart';

class SettingsTitle extends StatelessWidget {
  final String title;
  SettingsTitle(this.title);

  @override
  Widget build(BuildContext context) {
    
  final Size deviceSize = MediaQuery.of(context).size;
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
              fontSize: deviceSize.height / 40,
              fontWeight: FontWeight.values[4]),
        ));
  }
}