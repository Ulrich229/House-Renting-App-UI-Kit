import 'package:flutter/material.dart';

import 'widgets/decoration.dart';
import 'widgets/get_started_button.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              width: deviceSize.width,
              height: deviceSize.height / 1.7,
              child: Image.asset(
                'assets/images/entireHouses.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  width: deviceSize.width,
                  height: deviceSize.height / 2.1,
                ),
                Expanded(
                  child: Container(
                      width: deviceSize.width,
                      decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: BorderRadius.all(Radius.circular(60))),
                      child: Column(
                        children: [
                          Spacer(),
                          Text(
                            "Check out your\nConfortable home",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: deviceSize.height / 30,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Enjoy the confort of an affordable rental,\nwith the peace of mind of booking with\nyour app",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: deviceSize.height / 45,
                                color: Colors.grey[400]),
                          ),
                          Spacer(),
                          MyDecoration(),
                          Spacer(),
                          GetStartedButton(),
                          Spacer()
                        ],
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

