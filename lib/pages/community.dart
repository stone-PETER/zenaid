import 'package:flutter/material.dart';
import 'package:zenaid/pages/postadd.dart';
import 'package:zenaid/pages/postview.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    AddPost(),
    ViewPost(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          foregroundColor: Colors.white,
          title: Text(
            'ZenCommunity',
            style: TextStyle(fontSize: 28),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            dividerColor: Colors.white70,
            tabs: [
              Tab(icon: Icon(Icons.add), text: 'Add Post'),
              Tab(icon: Icon(Icons.view_agenda), text: 'View Post'),
            ],
          ),
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}
