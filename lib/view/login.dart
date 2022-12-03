import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tugasakhir/component/textinput.dart';
import 'package:tugasakhir/view/home.dart';
import 'package:tugasakhir/view/register.dart';
import 'package:http/http.dart' as http;

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  signIn(String username, String pass) async {
    Map data = {
      'username': username,
      'password': pass,
    };

    var respons =
        await http.post(Uri.parse("http://10.0.2.2/api/login.php"), body: data);

    print(respons.body);

    if (respons.statusCode == 200) {
      print('anda berhasil masuk');
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => home(),
          ));
    } else {
      print('ada yang salah');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Form(
            child: Column(
              children: [
                textinput(
                    controllerText: username,
                    helper: "Type Your Username",
                    label: "Username"),
                SizedBox(
                  height: 20,
                ),
                textinput(
                    controllerText: password,
                    helper: "Type Your Password",
                    label: "Password"),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 35,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      signIn(username.text, password.text);
                    },
                    child: const Text("Login"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
