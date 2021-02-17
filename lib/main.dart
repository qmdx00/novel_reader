import 'package:flutter/material.dart';
import 'package:novel_reader/routes/router.dart';
import 'package:novel_reader/widgets/page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: AppRouter.routes,
      home: PageWidget(),
    );
  }
}
