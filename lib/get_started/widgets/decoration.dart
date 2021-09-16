import 'package:flutter/material.dart';

import '../../colors.dart';

class MyDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 4,
          width: deviceSize.width / 10,
          decoration: BoxDecoration(
              color: marron,
              borderRadius: BorderRadius.all(Radius.circular(4))),
        ),
        SizedBox(
          width: 5,
        ),
        EmptyCircle(),
        SizedBox(
          width: 5,
        ),
        EmptyCircle()
      ],
    );
  }
}

class EmptyCircle extends StatelessWidget {
  const EmptyCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 5,
      decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.all(Radius.circular(4))),
    );
  }
}
