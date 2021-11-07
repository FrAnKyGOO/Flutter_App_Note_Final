import 'package:flutter/material.dart';
import 'package:flutter_mynote_final/controller/google_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note app'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Note app",
                  style: TextStyle(fontSize: 60),
                ),
                SizedBox(
                  height: 280,
                ),
                Padding(
                  
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      signInWithGoogle(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Continue With Google",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        //
                        SizedBox(
                          width: 10.0,
                        ),
                        //
                        Image.asset(
                          'assets/images/google.png',
                          height: 36.0,
                        ),
                      ],
                    ),
                    style: ButtonStyle( 
                        backgroundColor: MaterialStateProperty.all(
                          Colors.orange,
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                            vertical: 12.0,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
