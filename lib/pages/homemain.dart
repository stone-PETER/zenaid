import 'package:flutter/material.dart';
import 'package:zenaid/components/daily.dart';
import 'package:zenaid/components/tiplist.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ZenAid',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        backgroundColor: Colors.grey[700],
        toolbarHeight: 80,
      ),
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // App Title with a large font size
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 10.0),
                child: Text(
                  "Your Mental Well-being",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  "Daily Tasks",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Daily Task Widgets Section
              Container(
                margin: EdgeInsets.all(15),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    // Replace with your desired daily task widgets
                    DailyTaskWidget(
                      title: "Meditation",
                      duration: "10 minutes",
                    ),
                    DailyTaskWidget(
                      title: "Journaling",
                      duration: "5 minutes",
                    ),
                    DailyTaskWidget(
                      title: "Exercise",
                      duration: "30 minutes",
                    ),
                  ],
                ),
              ),

              // Mental Health Tips Section with a heading
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  "Mental Health Tips",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // List of mental health tips with bullet points
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TipListItem(text: "Connect with loved ones regularly."),
                    TipListItem(
                        text:
                            "Practice gratitude for the good things in life."),
                    TipListItem(text: "Get enough sleep."),
                    TipListItem(text: "Eat a healthy diet."),
                    TipListItem(text: "Seek professional help if needed."),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
