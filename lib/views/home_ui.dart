// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_sau_life_app/views/login_ui.dart';
import 'package:flutter_sau_life_app/views/signin_ui.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 100,
            ),

            Text(
              'Welcome to SAU',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'ยินดีต้อนรับเข้าสู่มหาลัยเอเชัยอาคเนย์',
              style: TextStyle(
                fontSize: 20,
                //fontWeight: FontWeight.bold,
                color: Colors.red[700],
              ),
            ),

            Text(
              'Created by Boxers',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red[500],
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginUi(),
                      ),
                    );
                  },

                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      150,
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninUi(),
                      ),
                    );
                  },
                  child: Text(
                    'SignUP',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      150,
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.black,
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
