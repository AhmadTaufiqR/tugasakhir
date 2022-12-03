import 'package:flutter/material.dart';

class textinput extends StatelessWidget {
  TextEditingController controllerText;
  String label;
  String helper;
  textinput(
      {super.key,
      required this.controllerText,
      required this.helper,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(),
      child: TextFormField(
        controller: controllerText,
        maxLength: 40,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.blueGrey,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey,
            ),
          ),
          helperText: helper,
        ),
        onChanged: (value) {},
      ),
    );
  }
}
