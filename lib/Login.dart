import 'package:first_flutter/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
    body: Column(children: <Widget>[
      Container (
        margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Image.asset(
          'assets/images/login.png',
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
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => showDialog(context: context, builder: (BuildContext context) {
                return const ForgetPassword();
              }),
              child: const Text(
                "Forget Password",
                style: TextStyle(
                  color: Colors.deepOrange,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 15),
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
                  child: Text('Login',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 20,
                      )),
                ))),
      ),
      Row(children: <Widget>[
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 25.0, right: 10.0),
              child: const Divider(
                color: Colors.black,
                height: 36,
                // thickness: 0.7,
              )),
        ),
        const Text("OR", style: TextStyle(fontSize: 15),),
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 25.0),
              child: const Divider(
                color: Colors.black,
                height: 36,
                // thickness: 0.7,
              )),
        ),
      ]),
      Container(
          margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          width: double.infinity,
          height: 35,
          child: RaisedButton.icon(
          color: Colors.white,
          onPressed: () {},
            icon: Container(
              child: Image.network('https://cdn-icons-png.flaticon.com/512/281/281764.png',
              height: 25,
              width: 25,)
            ),
           label: const Text('Login with Google'),
      )),
      Container(
          margin: const EdgeInsets.fromLTRB(30, 15, 30, 25),
          width: double.infinity,
          height: 35,
          color: Colors.black,
          child: RaisedButton.icon(
            icon: Image.network('https://cdn-icons-png.flaticon.com/128/733/733609.png',
              height: 25,
              width: 25,
            ),
            onPressed: () {},
            label: const Text('Login with Github',
              style: TextStyle(color: Colors.white),),
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        const Text('Don\'t have account?    ',
          style: TextStyle(
            fontSize: 15,
          ),),
        TextButton(onPressed: () { showDialog(context: context, builder: (BuildContext context) {
          return const SignUp();
        });},
          child: const Text('Sign Up',
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

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container (
              child: Column( children: <Widget> [
               const Text('Reset your password',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),),
                Container(
                  height: 3,
                  margin: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.purple, Color(0xFFAA00FF),  Color(0xFFD500F9), Color(0xFFAB47BC), Colors.purple])
                  ),
                )
              ]

              )
            ),
            // Row(children: [
            //   Container(
            //     height: 2,
            //     width: 300,
            //     decoration: const BoxDecoration(
            //         gradient: LinearGradient(
            //             begin: Alignment.topLeft,
            //             end: Alignment.bottomRight, colors: [Colors.pink, Colors.purple],
            //         )),
                // child: const Expanded(
                //
                //     child: Divider(
                //       color: LinearGradient(
                //         begin: Alignment.topLeft,
                //         end: Alignment.bottomRight, colors: [Colors.red, Colors.purple],
                //       ),
                //   height: 30,
                //
                // )),
              //   child: Container(
              //     child: Container(
              //       width: 1,
              //       margin: EdgeInsetsDirectional.only(top: 12, bottom: 2),
              //       decoration: BoxDecoration(
              //         border: Border(
              //           bottom: Divider.createBorderSide(context, color: Colors.red, width: 1),
              //         ),
              //       ),
              //     ),
              //   ),
            //   )
            // ],),


              // I can not put them to the left even ignore center above
            Container(
              margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Column(
                children: const [
                Text('Please enter your email!',
                style: TextStyle(
                    color: Color(0xFF616161),
                fontSize: 15),
                ),
                Text('We will send the link to change your password to your email.',
                style: TextStyle(
                    color: Color(0xFF616161),
                    fontSize: 15),),
              ],)
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: const [
              Text('Email you registered with',
              style: TextStyle(color: Color(0xFF616161)),),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      )
                  ),
                ),
              ],)
            ),

            Container(
              width: double.infinity,
              height: 40,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: RaisedButton(
                color: const Color(0xFF7B1FA2),
                onPressed: () { showDialog(context: context, builder: (BuildContext context) {
                  return const Verification();
                }); },
                child: const Text('Send',
                  style: TextStyle(
                      color: Colors.white,
                  ),),
              ),
            ),

            TextButton(
              onPressed: (){ showDialog(context: context, builder: (BuildContext context) {
                return const Login();
              });},
              child: const Text('Cancel'),
            )
          ],
        ),

      )
    );
  }
}

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Verification'),
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  VerifyCode(),
                  VerifyCode(),
                  VerifyCode(),
                  VerifyCode(),
                  VerifyCode(),
                  VerifyCode(),
                ],),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: RaisedButton(onPressed: () {},
                child: const Text('Verify',
                  style: TextStyle(color: Colors.white),
                ),),
            ),
            TextButton(onPressed: () { showDialog(context: context, builder: (BuildContext context) {
              return const ForgetPassword();
            }); },
              child: const Text('Cancel'),
            )
          ],
        )
      ),
    );
  }
}

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: 50,
        height: 50,
        child: const TextField(
          keyboardType: TextInputType.number,
          // maxLength: 1,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              )
          ),
        ),
      );
  }
}

