// ignore_for_file: duplicate_ignore, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_sau_life_app/views/login_ui.dart';

class SigninUi extends StatefulWidget {
  const SigninUi({super.key});

  @override
  State<SigninUi> createState() => _SigninUiState();
}

class _SigninUiState extends State<SigninUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Center(
            child: Column(
              children: [
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
                    'Get On Board!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create your profile to start your journey.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),

                //section textfield
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline_rounded,
                      color: Colors.grey,
                    ),
                    hint: Text(
                      'Full Name',
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
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
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_outlined,
                      color: Colors.grey,
                    ),
                    hint: Text(
                      'Phone Number',
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
                      Icons.password_outlined,
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

                //serction button
                SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: Text(
                    'Sign Up',
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
                            builder: (context) => LoginUi(),
                          ),
                        );
                      },
                      child: Text('Login'),
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