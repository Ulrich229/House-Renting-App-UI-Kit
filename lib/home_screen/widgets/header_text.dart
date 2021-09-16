import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Text(
      'Find Your\nSweet Home',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: deviceSize.height / 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}