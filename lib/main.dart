import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Login.dart';
import 'SignUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
    child: Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Home Page'),
        centerTitle: true,

        // bottom: const TabBar(
        //   tabs: [
        //     Tab(text: 'Login', icon: Icon(Icons.login)),
        //     Tab(text: 'Sign Up', icon: Icon(Icons.wifi),)
        //   ],
        // ),
      ),
      body: Login(),

      // body: const TabBarView(
      //   children: [
      //     Login(),
      //     // SignUp(),
      //   ],
      // ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



