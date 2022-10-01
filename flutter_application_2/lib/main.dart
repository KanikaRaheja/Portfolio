import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart';
import 'package:flutter_application_2/projects_page.dart';
import 'package:flutter_application_2/get_in_touch_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Portfolio',
      initialRoute: 'home_page',
      routes: {
        'home_page': (context) => const Homepage(),
        'projects_page': (context) => const ProjectsPage(),
        'get_in_touch_page': (context) => const GetInTouch(),
      },
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
