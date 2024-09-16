import 'package:doghome/constants.dart';
import 'package:doghome/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = 'RegisterScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            SizedBox(height: 75,),
            Image.asset(
              'assets/images/loginDog.png',
              height: 100,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('DogCare',
                  style: TextStyle(fontSize: 32,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 75,),
            Row(
              children: [
                Text('Register',
                  style: TextStyle(fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            CustomTextField(
                labelText : 'Enter your email'
            ),
            SizedBox(height: 15),
            CustomTextField(
                labelText:  'Password'
            ),
            SizedBox(height: 20),
            CustomButton(text: 'Register',routeName: LoginPage.id),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('already have an account',
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text('Login',
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