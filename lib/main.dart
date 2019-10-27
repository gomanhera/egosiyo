import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      title: '이고시요',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPage(),
    );
  }
}

// 조건 선택은 카드로
// https://github.com/geekruchika/FlutterCardSwipe

// 시작 페이지
// https://github.com/nisrulz/flutter-examples/tree/master/enabling_splash_screen