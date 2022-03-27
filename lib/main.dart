import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AnimatedSplashScreen(
        splash: Lottie.asset('assets/images/intro.json',),
        nextScreen: const MyHomePage(),
        splashTransition: SplashTransition.scaleTransition,
        duration: 10,
        pageTransitionType: PageTransitionType.bottomToTop,
      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(50),
        alignment: Alignment.center,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.asset('assets/images/intro.json'),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 80, 0, 20),
          width: double.infinity,
          height: 45,
          child: RaisedButton(
            color: const Color(0xFF7B1FA2),
            onPressed: () => showDialog(context: context, builder: (BuildContext context) {
              return const Login();
            }),
            child: const Text('Login',
              style: TextStyle(color: Colors.white,
                  fontSize: 20),),
          ),
        ),

        Container(
          width: double.infinity,
          height: 45,
          child: RaisedButton(
            color: Colors.white,
            onPressed: () => showDialog(context: context, builder: (BuildContext context) {
              return const SignUp();
            }),
            child: const Text('Sign Up',
              style: TextStyle(fontSize: 20),),
          ),
        )
        ])
      ),

      // body: const TabBarView(
      //   children: [
      //     Login(),
      //     // SignUp(),
      //   ],
      // ),
      ); // This trailing comma makes auto-formatting nicer for build methods.

  }
}



