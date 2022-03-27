import 'package:first_flutter/Login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SignUp extends StatelessWidget{
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: Column(children: <Widget>[
          Container (
            margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Image.asset(
              'assets/images/signup.png',
              height: 200,
              width: 400,
              alignment: Alignment.center,
            ),
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            width: double.infinity,
            height: 50,
            child: const TextField(
              decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(
                    FontAwesomeIcons.user,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )),
              inputFormatters: [
                // LengthLimitingTextInputFormatter(10),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 15),
            width: double.infinity,
            height: 50,
            child: const TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )),
              inputFormatters: [
                // LengthLimitingTextInputFormatter(10),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            width: double.infinity,
            height: 50,
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 15),
            width: double.infinity,
            child: RaisedButton(
                color: const Color(0xFF7B1FA2),
                onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const SignUp();
                    }),
                child: const SizedBox(
                    width: 330,
                    height: 45,
                    child: Center(
                      child: Text('Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 20,
                          )),
                    ))),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Have an account?    ',
                  style: TextStyle(
                    fontSize: 15,
                  ),),
                TextButton(onPressed: () { showDialog(context: context, builder: (BuildContext context) {
                  return const Login();
                });},
                  child: const Text('Sign In',
                    style: TextStyle(
                        color: Colors.purple,
                        decoration: TextDecoration.underline,
                        fontSize: 20),
                  ),),
              ])
        ]
        )
    );
  }
}
