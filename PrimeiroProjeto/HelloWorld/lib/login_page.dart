import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  onPressed: () {
                    if (email == 'luizgpp@gmail.com' && password == '123456') {
                      print('Você está Logado');
                    } else {
                      print('Algo deu errado!');
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Entrar'),
                      Icon(Icons.keyboard_arrow_right),
                    ],
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
