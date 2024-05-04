import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'ADD POST',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            style: TextStyle(fontSize: 25),
            controller: titleController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[400],
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            style: TextStyle(fontSize: 18),
            maxLines: 10,
            controller: descriptionController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[400],
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(height: 60),
          GestureDetector(
            onTap: () => {},
            child: Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Publish',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
