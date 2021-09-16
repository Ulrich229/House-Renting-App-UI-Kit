import 'package:flutter/material.dart';

import '../../colors.dart';

class GetStartedButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  final Size deviceSize = MediaQuery.of(context).size;
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushNamed('/home');
      },
      shape: BeveledRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(20))),
      child: Container(
        alignment: Alignment.center,
        height: deviceSize.height / 17,
        width: deviceSize.width / 2.5,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(10)),
            color: marron),
        child: Text(
          'Get Started',
          style: TextStyle(
            fontWeight: FontWeight.values[2],
              color: Theme.of(context)
                  .scaffoldBackgroundColor,
              fontSize: deviceSize.height / 40),
        ),
      ),
    );
  }
}
