import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Final Exam';

    return MaterialApp(
      title: appTitle,
      home: HomePage(title: appTitle),
      routes: <String, WidgetBuilder>{
        '/HomePage': (BuildContext context) => new HomePage(title: appTitle),
        '/DetailPage': (BuildContext context) => new DetailPage(roots: null),
      },
    );
  }
}
