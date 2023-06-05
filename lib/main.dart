import 'package:flutter/material.dart';
import 'package:to_do_list_app/ToDoPage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,

       // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffbfffc4)),
       // useMaterial3: false,
      ),
      home: ToDoPage(),
    );
  }
}
