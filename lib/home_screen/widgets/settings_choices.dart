import 'package:flutter/material.dart';

import '../../colors.dart';

class SettingsChoices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingArea(
            hintText: 'Neaby Place',
            icon: Icons.location_on_rounded,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: SettingArea(
                      hintText: 'Wed, 15 Sept 2021',
                      icon: Icons.date_range_rounded)),
              SizedBox(
                width: 7,
              ),
              Expanded(
                  child: SettingArea(
                hintText: '3 days',
                icon: null,
              ))
            ],
          ),
      ],
    );
  }
}

class SettingArea extends StatelessWidget {
  final IconData? icon;
  final String hintText;
  SettingArea({required this.hintText, required this.icon});
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height / 17,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        height: deviceSize.height / 18,
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            hintStyle: TextStyle(
              fontSize: deviceSize.height / 55,
            ),
            prefixIcon: icon == null
                ? null
                : Icon(
                    icon,
                    color: marron,
                    size: deviceSize.height / 35,
                  ),
          ),
        ),
      ),
    );
  }
}