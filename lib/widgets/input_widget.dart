import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String labelText;
  final bool hideText;
  final IconData fieldIcon;
  const InputWidget({Key key, this.labelText, this.hideText, this.fieldIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          obscureText: hideText,
          decoration: InputDecoration(
            prefixIcon: Icon(fieldIcon),
            filled: true,
            fillColor: Colors.grey.shade200,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
