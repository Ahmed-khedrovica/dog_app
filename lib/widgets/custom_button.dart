import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.text,required this.routeName});
  final String text;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 30),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )
        ),
        onPressed:(){
          Navigator.pushNamed(context, routeName);
        },
        child: Text(text)
    );
  }
}


