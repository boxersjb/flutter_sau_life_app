// ignore_for_file: duplicate_ignore, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_sau_life_app/views/signin_ui.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          //padding: EdgeInsets.only(
          //  top: 100,
          //  left: 40,
          //  right: 40,
          //  bottom: 40,
          // ),
          child: Center(
            child: Column(
              children: [
                //Section icon back
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    //icon:  black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 30,
                    ),
                  ),
                ),

                //section logo
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),

                //section text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Make it work, make it right, make it fast.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),

                //section form
                SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
                      color: Colors.grey,
                    ),
                    hint: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true, //password *****
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                    hint: Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),

                //section button
                SizedBox(
                  height: 50,
                ),

                ElevatedButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width, //full width
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Text(
                  'OR',
                ),

                SizedBox(
                  height: 20,
                ),

                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/googlelogo.png',
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sign-in with Google',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width, //full width
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SigninUi(),
                          ),
                        );
                      },
                      child: Text('Sign up'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
