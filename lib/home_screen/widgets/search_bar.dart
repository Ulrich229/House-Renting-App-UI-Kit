import 'package:flutter/material.dart';

import '../../colors.dart';
import 'settings.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26, width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Row(
        children: [
          Expanded(
              flex: 8,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                height: deviceSize.height / 18,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search home...',
                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      hintStyle: TextStyle(
                        fontSize: deviceSize.height / 55,
                      ),
                      prefixIcon: Container(
                        child: Image.asset("assets/icons/search.png"),
                      )),
                ),
              )),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: marron,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            padding: EdgeInsets.all(10),
            child: InkWell(
              splashColor: marron.withOpacity(0.5),
              onTap: () {
                Scaffold.of(context).showBottomSheet(
                  (context) => Settings(),
                );
              },
              child: Image.asset(
                'assets/icons/settings.png',
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
