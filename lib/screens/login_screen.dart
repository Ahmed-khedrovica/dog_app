
import 'package:doghome/screens/home_screen.dart';
import 'package:doghome/screens/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            const SizedBox(height: 75,),
            Image.asset(
              'assets/images/loginDog.png',
              height: 100,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dog Care App',
                  style: TextStyle(fontSize: 32,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 75,),
            Row(
              children: [
                Text('Login',
                  style: TextStyle(fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            CustomTextField(
                labelText: 'Enter your email'
            ),
            const SizedBox(height: 15),
            CustomTextField(
                labelText: 'Password'
            ),
            const SizedBox(height: 20),
            CustomButton(text: 'Login',routeName: HomeScreen.id),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('don\'t have an account?',
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: Text('  Register',
                    style: TextStyle(
                        color: Colors.black54
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}