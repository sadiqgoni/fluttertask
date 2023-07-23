import 'package:flutter/material.dart';
import 'package:fluttertask/index.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return MyApp();
  }));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
