import 'package:flutter/material.dart';
import 'package:flutter_login_page_1/components/my_button.dart';
import 'package:flutter_login_page_1/components/textfield.dart';


class LoginPage extends StatelessWidget{
 LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(){}
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
                ),
               const Icon(
                  Icons.lock,
                  size: 100,
                ),

               const SizedBox(height: 50),

                const Text(
                  "Welcome Back!",
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),),

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
                  
                  const SizedBox(height:10),
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

                    const SizedBox(height: 10),
                    MyButton(onTap: signUserIn,
                    ),
            ]
          )
        )
      )
    );
  }
}