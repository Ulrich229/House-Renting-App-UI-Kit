import 'package:flutter/material.dart';
import 'package:renthouse/home_screen/widgets/settings_price_range.dart';

import 'settings_title.dart';
import 'settings_choices.dart';
import 'settings_radio.dart';
import 'validate_button.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height / 1.25,
      width: deviceSize.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -5),
              blurRadius: 5,
            )
          ]),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            height: 4,
            width: deviceSize.width / 6,
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          SizedBox(
            height: 30,
          ),
          SettingsTitle("Location"),
          SizedBox(
            height: 20,
          ),
          SettingsChoices(),
          SizedBox(
            height: 30,
          ),
          SettingsTitle("Price Range"),
          SizedBox(
            height: 20,
          ),
         SettingsPriceRange(),
          SizedBox(
            height: 30,
          ),
          SettingsTitle("Categories"),
          SettingsRadio(),
          Spacer(),
          ValidateButton(),
          Spacer()

        ],
      ),
    );
  }
}


