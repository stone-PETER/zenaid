import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewReddit extends StatelessWidget {
  final String PageLink;
  ViewReddit({super.key, required this.PageLink});
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(
        'https://www.reddit.com/r/Anxiety/comments/1ck3tz7/a_cycle_of_perfectionism_as_a_coping_mechanism/'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text(
          "Reddit",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
