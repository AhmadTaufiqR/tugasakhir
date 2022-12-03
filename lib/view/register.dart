import 'package:flutter/material.dart';
import 'package:tugasakhir/component/textinput.dart';
import 'package:tugasakhir/view/login.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController fullnameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController teleponC = TextEditingController();

  SignUp(String user, pass, email, full, telepon) async {
    Map data = {
      'username': user,
      'password': pass,
      'email': email,
      'nama_lengkap': full,
      'telepon': telepon,
    };

    var respons = await http.post(Uri.parse('http://10.0.2.2/api/register.php'),
        body: data);

    if (respons.statusCode == 200) {
      print('Anda Berhasil Login');
      print(respons.body);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => loginpage(),
          ));
    } else {
      print('Ada yang salah');
    }
  }

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
                    textinput(
                        controllerText: usernameC,
                        helper: "type Your Username",
                        label: "Username"),
                    SizedBox(
                      height: 20,
                    ),
                    textinput(
                        controllerText: passwordC,
                        helper: "type Your Password",
                        label: "Password"),
                    SizedBox(
                      height: 20,
                    ),
                    textinput(
                        controllerText: emailC,
                        helper: "type Your Email",
                        label: "Email"),
                    SizedBox(
                      height: 20,
                    ),
                    textinput(
                        controllerText: fullnameC,
                        helper: "type Your Full Name",
                        label: "Full Name"),
                    SizedBox(
                      height: 20,
                    ),
                    textinput(
                        controllerText: teleponC,
                        helper: "type Your Telepon",
                        label: "Telepon"),
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
                    SignUp(usernameC.text, passwordC.text, emailC.text,
                        fullnameC.text, teleponC.text);
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
