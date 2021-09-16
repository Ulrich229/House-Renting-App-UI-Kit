import 'package:flutter/material.dart';

import '../../colors.dart';

class SettingsPriceRange extends StatelessWidget {
  const SettingsPriceRange({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
            children: [
              PriceRange(62),
              Expanded(
                  child: Divider(
                color: Colors.black26,
              )),
              PriceRange(250),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 15,
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black26,
                    thickness: 0.6,
                  ),
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      border: Border.all(color: marron, width: 2),
                      shape: BoxShape.circle),
                ),
                Expanded(
                  child: Divider(
                    color: marron,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      border: Border.all(color: marron, width: 2),
                      shape: BoxShape.circle),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black26,
                    thickness: 0.6,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}


class PriceRange extends StatelessWidget {
  final int price;
  PriceRange(this.price);

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: deviceSize.height / 20,
      width: deviceSize.width / 2.5,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Text(
        "\$$price",
        style: TextStyle(fontSize: deviceSize.height / 50),
      ),
    );
  }
}