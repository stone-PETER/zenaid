// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zenaid/pages/home.dart';

class ZenAid extends StatelessWidget {
  const ZenAid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Center(
          child: Column(
            children: [
              //logo
              Image.asset(
                'lib/assets/Logo.png',
                height: 240,
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(100),
                child: Text(
                  'Hi Buddy, Start your day with the best smile!',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Home())),
                child: Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  
                  child: Center(
                    child: Text(
                      'Continue to App',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              )

              //title
            ],
          ),
        ),
      ),
    );
  }
}
