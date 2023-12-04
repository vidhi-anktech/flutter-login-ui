import 'package:flutter/material.dart';
import 'package:flutter_login_page_1/components/my_button.dart';
import 'package:flutter_login_page_1/components/square_tile.dart';
import 'package:flutter_login_page_1/components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
          const SizedBox(
            height: 40,
          ),
          const Icon(
            Icons.lock,
            size: 100,
          ),
          const SizedBox(height: 50),
          const Text(
            "Welcome Back!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 25),
          MyTextField(
            controller: usernameController,
            hintText: 'Enter Your UserName',
            obscureText: false,
          ),
          const SizedBox(height: 25),
          MyTextField(
            controller: passwordController,
            hintText: 'Enter Your Password',
            obscureText: true,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey[800]),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          MyButton(
            onTap: signUserIn,
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    'Or Continue with',
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 35),
         const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SquareTile(imagePath: 'assets/images/Google_Logo.png'),

              SizedBox(width: 25),
              SquareTile(imagePath: 'assets/images/Apple-Logo.png')
            ]
          ),

          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member?',
                style: TextStyle(color:Colors.grey.shade700),
              ),
              const SizedBox(width: 4),
              const Text('REGISTER NOW',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 78, 139),
                fontWeight: FontWeight.bold,
              ))
            ]
          )
        ]))));
  }
}
