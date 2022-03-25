import 'package:flutter/material.dart';

class SignUp extends StatelessWidget{
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget> [
          Image.asset('assets/images/signup.png', height: 150,
            width: 150, alignment: Alignment.center,),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              icon: Icon(Icons.login),
            ),
            inputFormatters: [
              // LengthLimitingTextInputFormatter(10),
            ],
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              icon: Icon(Icons.signal_cellular_0_bar_outlined),
            ),
          ),
          RaisedButton(
            color: Colors.purple,
            onPressed: () =>
                showDialog(context: context, builder: (BuildContext context) {
              return AlertDialog(
                content: const Text('Stupid'),
                actions: [FlatButton(
                    onPressed: () => Navigator.pop(context, 'Yep'),
                    child: const Text('Yep')),
                 FlatButton(
                     onPressed: () => Navigator.pop(context, 'Nope'),
                     child: const Text('Nope')),

                ],
              );
            }),
            child: const SizedBox (
              width: 300,
              height: 50,
              child: Center (
              child: Text('Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 25,
                )
            ),
              )
          ))
        ]);
  }
}
