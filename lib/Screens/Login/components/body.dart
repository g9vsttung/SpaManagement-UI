import 'package:flutter/material.dart';
import 'package:spa_booking/Components/rounded_button.dart';
import 'package:spa_booking/Components/rounded_input_field.dart';
import 'package:spa_booking/Components/rounded_password_field.dart';
import 'package:spa_booking/Screens/Home/home_screen.dart';
import 'package:spa_booking/Screens/Login/components/background.dart';
import 'package:spa_booking/Screens/Login/components/or_divider.dart';
import 'package:spa_booking/Screens/SignUp/signup_screen.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/spa_girl.png",
            width: size.width * 0.8,
          ),
          Text(
            "Welcome Back",
            style: TextStyle(
                fontFamily: 'Roboto',
                letterSpacing: 1.2,
                color: Colors.white,
                fontSize: 20),
          ),
          Text(
            "Please, Log in.",
            style: TextStyle(
                fontFamily: 'Roboto',
                letterSpacing: 1.2,
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.width * 0.06),
          RoundedInputField(
              hintText: "Username",
              icon: Icons.assignment_ind_outlined,
              onChanged: (value) {}),
          RoundedPasswordField(text: "Password",),

          SizedBox(height: size.width * 0.05),
          RoundedButton(
            text: "Continue",
            color: (Colors.red[200])!,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainScreen(); //Routing Home Page in here
              }));
            },
            textColor: Colors.white,
          ),
          OrDivider(),
          RoundedButton(
            text: "Sign Up",
            color: (Colors.red[300])!,
            press: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SignupScreen();
                },
              ));
            },
            textColor: Colors.white,
          ),
        ],
      ),

    );
  }
}