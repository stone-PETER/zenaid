import 'package:flutter/material.dart';
import 'package:zenaid/pages/chat.dart';

import 'journal.dart';

class Aipage extends StatefulWidget {
  const Aipage({super.key});

  @override
  State<Aipage> createState() => _AipageState();
}

class _AipageState extends State<Aipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ZenAI',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        backgroundColor: Colors.grey[700],
        toolbarHeight: 80,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[800]),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Chat())),
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Chat With ZenAI',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Journal())),
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Write about your day',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
