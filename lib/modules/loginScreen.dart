import 'package:flutter/material.dart';
import 'package:shop_app/modules/registerScreen.dart';
import 'package:shop_app/shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LOGIN",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.black),
                ),
                Text(
                  "Login now to enjoy our hot offers",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey.shade700),
                ),
                SizedBox(height: 10),
                textField(
                    controller: emailController,
                    keyboard: TextInputType.emailAddress,
                    valide: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                    },
                    label: "Email Address",
                    preIcon: Icons.email),
                SizedBox(height: 15),
                textField(
                    controller: passController,
                    password: true,
                    sufficon: Icons.visibility_off,
                    keyboard: TextInputType.visiblePassword,
                    valide: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                    },
                    label: "Password",
                    preIcon: Icons.lock),
                SizedBox(height: 30),
                defaultButton(
                  function: () {},
                  text: "Login",
                  isUpperCase: true,
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an acoount?",
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, RegisterScreen());
                      },
                      child: Text(
                        "Register now!",
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
