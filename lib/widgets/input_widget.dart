import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String labelText;
  final bool showText;
  const InputWidget({Key key, this.labelText, this.showText}) : super(key: key);

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
          obscureText: showText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade200,
            border: InputBorder.none,
          ),
        ),
      ],
    );
  }
}
