import 'package:first_flutter/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget> [
          Image.asset('assets/images/login.png', height: 250,
            width: 250, alignment: Alignment.center,),
          Container(
            width: 360,
            height: 50,

            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(FontAwesomeIcons.user, color: Colors.grey,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )

              ),
              inputFormatters: [
                // LengthLimitingTextInputFormatter(10),
              ],
            ),
          ),

          const SizedBox(height: 12,),
          Container(
            width: 360,
            height: 50,
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(FontAwesomeIcons.passport, color: Colors.grey,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                )
              ),
            ),
          ),

          const SizedBox(height: 10,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child:const Text("Forget Password",
                    style: TextStyle(
                        color: Colors.deepOrange
                    ),
                  ),
                )
              ],
            ),
          ),
          RaisedButton(
              color: Colors.deepPurple,
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
                  width: 330,
                  height: 50,
                  child: Center (
                    child: Text('Login',
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