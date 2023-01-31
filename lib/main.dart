import 'package:flutter/material.dart';
import 'package:provider_app/main.dart';
import 'package:provider/provider.dart';

import './home_screen.dart';
import './countermodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterViewModel>(
      create: (BuildContext context) =>  CounterViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Provider App'),
      ),
    );
  }
}