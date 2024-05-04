import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://abilbiju.github.io/ai.html'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text(
          'ZenAI',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
