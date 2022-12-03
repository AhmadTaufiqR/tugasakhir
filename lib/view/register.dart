import 'package:flutter/material.dart';
import 'package:tugasakhir/view/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(),
                      child: TextFormField(
                        initialValue: 'John Doe',
                        maxLength: 40,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "Type your username",
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(),
                      child: TextFormField(
                        initialValue: '12345',
                        maxLength: 6,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "Type your password",
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(),
                      child: TextFormField(
                        initialValue: 'taufiq@gmail.com',
                        maxLength: 50,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "Type your email",
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(),
                      child: TextFormField(
                        initialValue: 'Taufiq Ridoi',
                        maxLength: 30,
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "Type your fullname",
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(),
                      child: TextFormField(
                        initialValue: '12345678',
                        maxLength: 50,
                        decoration: const InputDecoration(
                          labelText: 'telepone',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "Type your telepone",
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
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
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => loginpage(),
                        ));
                  },
                  child: const Text("Register"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
