import 'package:flutter/material.dart';

import '../../colors.dart';

class SettingsRadio extends StatefulWidget {
  @override
  _SettingsRadioState createState() => _SettingsRadioState();
}

class _SettingsRadioState extends State<SettingsRadio> {
  String radioItem = 'House';

  int id = 1;

  List<String> catChoice = [
    "Apartment",
    "House",
    "Office",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: catChoice
          .map((data) => Container(
                padding: EdgeInsets.zero,
                height: 25,
                child: RadioListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  activeColor: marron,
                  title: Text(
                    "$data",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 50),
                  ),
                  groupValue: catChoice.indexOf(data),
                  value: id,
                  onChanged: (val) {
                    setState(() {
                      radioItem = data;
                      id = catChoice.indexOf(data);
                    });
                  },
                ),
              ))
          .toList(),
    );
  }
}
