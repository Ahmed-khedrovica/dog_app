import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(labelText),
          labelStyle:  TextStyle(color: Colors.black54),
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black54,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black54
            ),
          )
      ),
    );
  }
}
