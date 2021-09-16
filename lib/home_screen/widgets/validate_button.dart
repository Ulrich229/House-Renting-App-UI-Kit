import 'package:flutter/material.dart';

import '../../colors.dart';

class ValidateButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  final Size deviceSize = MediaQuery.of(context).size;
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      shape: BeveledRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(20))),
      child: Container(
        alignment: Alignment.center,
        height: deviceSize.height / 17,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(10)),
            color: marron),
        child: Text(
          'Apply Filters',
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
