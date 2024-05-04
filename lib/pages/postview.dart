import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zenaid/components/subreds.dart';

class ViewPost extends StatefulWidget {
  const ViewPost({super.key});

  @override
  State<ViewPost> createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  void deleteSRS(int index) {
    setState(() {
      sub_reditts.removeAt(index);
    });
  }

  List sub_reditts = [
    [
      "Anxiety at home, nowhere else",
      "https://www.reddit.com/r/Anxiety/comments/1ck1lo9/anxiety_at_home_nowhere_else/"
    ],
    [
      "A Cycle of Perfectionism as a Coping Mechanism",
      "https://www.reddit.com/r/Anxiety/comments/1ck3tz7/a_cycle_of_perfectionism_as_a_coping_mechanism/"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView.builder(
          
          itemCount: sub_reditts.length,
          itemBuilder: (BuildContext context, int index) {
            return subredtiles(
              SRtitle: sub_reditts[index][0],
              deleteFunction: (context) => deleteSRS(index),
              Redditlink: sub_reditts[index][1],
            );
          },
        ),
      ),
    );
  }
}
