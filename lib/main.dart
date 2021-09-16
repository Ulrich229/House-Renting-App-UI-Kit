import 'package:flutter/material.dart';

import 'get_started/get_started.dart';
import 'home_screen/home_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway'
      ),
      routes: {
        '/': (ctx)=>GetStarted(),
        '/home': (ctx)=>HomeScreen(),
      },
    );
  }
}